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

function writeSig($CIDR, $Tag, &$ID) {
    $ThisTag = '{TAG} (IP4-{CAPS}-';
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
};

$Files = [__DIR__ . '/../vault/ipv4.dat', __DIR__ . '/../vault/ipv4_isps.dat', __DIR__ . '/../vault/ipv4_other.dat'];
$Output = fetch(__DIR__ . '/zbip4head.php');

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
                $Section .= writeSig(substr($Line, 0, $PosX), $Tag, $ID);
            } elseif (substr($Line, 0, 5) === 'Tag: ') {
                $Tag = substr($Line, 5);
                updateTags($Section, $Tag, $ID);
            }
        }
    }
    updateTags($Section, $Tag, $ID);
    $Output .= str_replace('{TAG}', 'Access denied', $Section) . "\n";
}
unset($Switch, $Section, $ID, $Tag, $Breaker, $Line, $Data, $File, $Files);

$Output .= fetch(__DIR__ . '/zbip4foot.php');

$Handle = fopen('X:/ip4.sig', 'wb');
fwrite($Handle, $Output);
fclose($Handle);
unset($Handle, $Output);

echo 'Done.';
