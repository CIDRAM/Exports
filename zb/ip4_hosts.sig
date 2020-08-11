<?php
/**
 * This file is adapted from the CIDRAM default IPv4 signature files to work with ZB Block 0.5+.
 *
 * Homepage for CIDRAM: https://cidram.github.io/
 * CIDRAM COPYRIGHT 2016 and beyond by Caleb Mazalevskis (Maikuolan).
 *
 * Homepage for ZB Block 0.4.20 and above: http://zb-block.net
 *
 * License: GNU/GPLv2
 * @see LICENSE.txt
 */

/**
 * Signature file version information.
 * See: http://zb-block.net/zbf/showthread.php?t=20
 * This file last updated: 2020.08.11
 */
$zbbversion .= ' / IP4H-106d';

// *php 5 fix
global $whyblockout, $ax;
// SoftLayer bypasses.
if (inmatch($whyblockout, '(IP4H-SOFTLAYER-', '') && $ax > 0) {
    $zbamz = 0;
    $zbamz += inmatch($lcuseragent, 'disqus', 'Disqus bypass. '); //74a
    if ($zbamz > 0) {
        $ax -= 1;
    }
}

// Hurricane Electric bypasses.
if (inmatch($whyblockout, '(IP4H-HURRICANEELECTRIC-', '') && $ax > 0) {
    $zbamz = 0;
    $zbamz += rmatch($lcuseragent, '.getpebble.com', 'Nice enough to ask bypass. '); //74e
    $zbamz += inmatch($useragent, 'Feedly', 'Feedly bypass. '); //74c
    $zbamz += cidrblock($address, '45.33.128.0/20', '') && inmatch($useragent, 'Puffin', 'Puffin browser bypass. '); // 2019.04.30
    if ($zbamz > 0) {
        $ax -= 1;
    }
}

// Amazon AWS bypasses.
if (inmatch($whyblockout, '(IP4H-AMAZONCOMINC-', '') && $ax > 0) {
    // Feedspot bypass (2020.01.01)
    // See: https://udger.com/resources/ua-list/bot-detail?bot=Feedspotbot
    if (
        ($address === '54.186.248.49' || $address === '54.245.252.119') &&
        inmatch($useragent, '+https://www.feedspot.com/fs/fetcher', 'Feedspot bypass. ')
    ) {
        $ax -= 1;
    }
}

// Automattic bypasses.
if (inmatch($whyblockout, '(IP4H-AUTOMATTIC-', '') && $ax > 0) {
    $zbamz = 0;
    $zbamz += inmatch($lcuseragent, 'wp.com feedbot/1.0 (+https://wp.com)', 'Feedbot bypass. '); // 2020.01.01
    $zbamz += inmatch($lcuseragent, 'jetpack', 'Jetpack bypass. '); // 2020.01.01
    if ($zbamz > 0) {
        $ax -= 1;
    }
}

// IP4H Test Trigger
$ax += inmatch($query, 'xip4hx', 'IP4H Test Trigger. ');

// EoF
