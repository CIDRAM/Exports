<?php
/**
 * This file is a tool used for adapting the CIDRAM default IPv4 signature files to work with ZB Block 0.5+.
 *
 * Homepage for CIDRAM: https://cidram.github.io/
 * CIDRAM COPYRIGHT 2016 and beyond by Caleb Mazalevskis (Maikuolan).
 *
 * Homepage for ZB Block 0.4.20 and above: http://zb-block.net
 * Homepage for ZB Block 0.4.10a4 and below: http://www.spambotsecurity.com/zbblock.php
 *
 * License: GNU/GPLv2
 * @see LICENSE.txt
 */

function getLine(&$Data) {
    if (strpos($Data, "\r")) {
        $Data = (
            strpos($Data, "\r\n") !== false
        ) ? str_replace("\r", '', $Data) : str_replace("\r", "\n", $Data);
    }
    $Data = "\n" . $Data . "\n";
    $PosB = -1;
    while (true) {
        if (($PosA = strpos($Data, "\n", $PosB + 1)) === false) {
            break;
        }
        $PosA++;
        if (!$PosB = strpos($Data, "\n", $PosA)) {
            break;
        }
        yield substr($Data, $PosA, $PosB - $PosA);
        $PosB--;
    }
}

function writeSig($Ident, $CIDR, $Tag, &$ID) {
    $ThisTag = '{TAG} (' . $Ident . '-{CAPS}-';
    return "\n" . '$ax += cidrblock($address, \'' . $CIDR . '\', \'' . $ThisTag . ($ID++) . '). \');';
}

function updateTags(&$SectionData, $Tag, $ID) {
    $Caps = $Tag ? strtoupper(preg_replace('~[^a-zA-Z0-9]~', '', $Tag)) : hash('crc32b', $SectionData);
    $IDLen = strlen($ID);
    $Less = $IDLen - 1;
    for ($Place = 0; $Place <= $IDLen; $Place++) {
        $SectionData = preg_replace('~-([0-9]{0,' . $Less . '})\)~', '-0\1)', $SectionData);
    }
    $SectionData = str_replace(['{TAG} (', '{CAPS}'], [($Tag ? $Tag . ' (' : 'Access denied ('), $Caps], $SectionData);
}

function fetch($File) {
    if (!is_file($File) || !is_readable($File)) {
        return false;
    }
    static $Blocksize = 131072;
    $Filesize = filesize($File);
    $Size = ($Filesize && $Blocksize) ? ceil($Filesize / $Blocksize) : 0;
    $Data = '';
    if ($Size > 0) {
        $Handle = fopen($File, 'rb');
        $r = 0;
        while ($r < $Size) {
            $Data .= fread($Handle, $Blocksize);
            $r++;
        }
        fclose($Handle);
    }
    return $Data ?: false;
}

function build($Files, $Ident, $HeadFile, $FootFile, $OutFile) {
    if (!is_array($Files)) {
        $Files = [$Files];
    }
    $Output = fetch(__DIR__ . '/' . $HeadFile);

    foreach ($Files as $File) {
        if (!$Data = fetch($File)) {
            continue;
        }
        $Switch = false;
        $Breaker = 0;
        $Tag = '';
        $Lines = getLine($Data);
        $ID = 0;
        $Section = '';
        foreach ($Lines as $Line) {
            if ($Line === '# ---') {
                if ($Switch) {
                    break;
                }
                $Switch = true;
            }
            if (!$Line) {
                if ($Breaker > 1) {
                    $Breaker = 0;
                    $Tag = '';
                    $ID = 0;
                    $Output .= str_replace('{TAG}', 'Access denied', $Section);
                    $Section = '';
                } else {
                    $Breaker++;
                }
                $Section .= "\n";
            } elseif ($Switch) {
                if (substr($Line, 0, 2) === '# ') {
                    if (substr($Line, 0, 9) === '# %Listed' || substr($Line, 0, 6) === '# Stop') {
                        continue;
                    }
                    $Section .= "\n" . '// ' . substr($Line, 2);
                } elseif (($PosX = strpos($Line, ' Deny ')) !== false || ($PosX = strpos($Line, ' Run ')) !== false) {
                    $Section .= writeSig($Ident, substr($Line, 0, $PosX), $Tag, $ID);
                } elseif (substr($Line, 0, 5) === 'Tag: ') {
                    $Tag = substr($Line, 5);
                    updateTags($Section, $Tag, $ID);
                }
            }
        }
        updateTags($Section, $Tag, $ID);
        $Output .= str_replace('{TAG}', 'Access denied', $Section) . "\n";
    }

    $Output .= fetch(__DIR__ . '/' . $FootFile);
    $Output = preg_replace(['~\r~', '~\n{3,}~'], ['', "\n\n"], $Output);
    $Handle = fopen(__DIR__ . '/' . $OutFile, 'wb');
    fwrite($Handle, $Output);
    fclose($Handle);
}

$Path = 'C:/Projects/html/CIDRAM-v2/vault/';

build([$Path . 'ipv4.dat'], 'IP4H', 'ip4h_head.php', 'ip4h_foot.php', 'ip4_hosts.sig');
build([$Path . 'ipv4_isps.dat'], 'IP4S', 'ip4s_head.php', 'ip4s_foot.php', 'ip4_isps.sig');
build([$Path . 'ipv4_bogons.dat', $Path . 'ipv4_other.dat'], 'IP4X', 'ip4x_head.php', 'ip4x_foot.php', 'ip4_other.sig');

echo 'Done.';
