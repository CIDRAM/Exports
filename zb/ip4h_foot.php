// SoftLayer bypasses.
if (inmatch($whyblockout, '(IP4H-SOFTLAYER-', '') && $ax > 0) {
    $zbamz = 0;
    $zbamz += inmatch($lcuseragent, 'showyoubot', 'ShowyouBot bypass. '); //72b
    $zbamz += inmatch($lcuseragent, 'disqus', 'Disqus bypass. '); //74a
    $zbamz += inmatch($useragent, 'Feedspot http://www.feedspot.com', 'Feedspot bypass. '); //74c
    $zbamz += inmatch($useragent, 'Superfeedr bot/2.0', 'Superfeedr bypass. '); //74c
    $zbamz += inmatch($useragent, 'Feedbot', 'Feedbot bypass. '); //74c
    if ($zbamz > 0) {
        $ax -= 1;
    }
}

// Hurricane Electric bypasses.
if (inmatch($whyblockout, '(IP4H-HURRICANEELECTRIC-', '') && $ax > 0) {
    $zbamz = 0;
    $zbamz += cidrblock($address, '65.49.67.0/24', 'Access provider block bypass (BYP-IP4H-HURRICANEELECTRIC-0). '); //78a mod 80a
    $zbamz += rmatch($lcuseragent, '.getpebble.com', 'Nice enough to ask bypass. '); //74e
    $zbamz += inmatch($useragent, 'Feedspot http://www.feedspot.com', ' Feedspot bypass. ' ); //74c
    $zbamz += inmatch($useragent, 'Feedly', ' Feedly bypass. ' ); //74c
    if ($zbamz > 0) {
        $ax -= 1;
    }
}

// Rackspace Hosting bypasses.
if (inmatch($whyblockout, '(IP4H-RACKSPACEHOSTING-', '') && $ax > 0) {
    $ax -= ($address === '162.13.83.46' && (
        $whyblockout = $whyblockout . 'Google Alert bypass. '
    )); //78a
}

// IP4H Test Trigger
$ax += inmatch($query, 'xip4hx', 'IP4H Test Trigger. ');

// EoF
