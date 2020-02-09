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
 * This file last updated: 2020.02.09
 */
$zbbversion .= ' / IP4X-101';

// *php 5 fix
global $whyblockout, $ax;




// ---
// IPv4 Bogons List.
// Updated: 2018.03.29 / Checked: 2020.01.11
// Refer https://www.iana.org/assignments/ipv4-address-space/ipv4-address-space.xhtml

$ax += cidrblock($address, '0.0.0.0/8', 'IPv4 Bogons (IP4X-IPV4BOGONS-0). ');
$ax += cidrblock($address, '224.0.0.0/3', 'IPv4 Bogons (IP4X-IPV4BOGONS-1). ');





// ---
// ASN 174 ("Cogent Communications").

// We've experienced a significant amount of unwanted traffic from their ASN in
// the past (hack attempts, spamming, scraping, etc), and this type of traffic
// should generally be blocked, but their ASN unfortunately encompasses and
// interlaces with a significant number of benign human endpoints, ISPs,
// backbone architecture, etc that we don't want to block, so I'm not outright
// listing the ASN in entirety. Listings have also been split across different
// signature files as to list at the signature files where best suited.

// Cogent Communications' Wikipedia page:
// - en.wikipedia.org/wiki/Cogent_Communications
// See also:
// - bgpmon.net/large-scale-bgp-hijack-out-of-india/
// - forums.spybot.info/showthread.php?23632-SPAM-frauds-fakes-and-other-MALWARE-deliveries/page37
// - dyn.com/blog/mitm-internet-hijacking/

// Cogent VPNs+Proxies (AzireVPN, OVPN, BeeVPN ApS, Windscribe, etc; "^.*(?:Prox|Windscribe|VPN).*$").
// Exclude invalids to reduce the false positive risk.

// Updated: 2020.01.03 / Checked: 2020.01.26
$ax += cidrblock($address, '23.154.160.0/24', 'Cogent VPNs+Proxies (IP4X-COGENTVPNSPROXIES-0). ');

// No announce description (a frequent source of spam + other generally
// unwanted; exclude invalids to reduce the false positive risk).

// Updated: 2020.01.26
$ax += cidrblock($address, '185.171.66.0/24', 'Cogent Other (IP4X-COGENTOTHER-000). ');
$ax += cidrblock($address, '23.146.193.0/24', 'Cogent Other (IP4X-COGENTOTHER-001). ');
$ax += cidrblock($address, '23.148.193.0/24', 'Cogent Other (IP4X-COGENTOTHER-002). ');
$ax += cidrblock($address, '45.89.124.0/22', 'Cogent Other (IP4X-COGENTOTHER-003). ');
$ax += cidrblock($address, '45.92.216.0/22', 'Cogent Other (IP4X-COGENTOTHER-004). ');
$ax += cidrblock($address, '45.95.172.0/22', 'Cogent Other (IP4X-COGENTOTHER-005). ');
$ax += cidrblock($address, '45.138.48.0/22', 'Cogent Other (IP4X-COGENTOTHER-006). ');
$ax += cidrblock($address, '81.2.149.0/24', 'Cogent Other (IP4X-COGENTOTHER-007). ');
$ax += cidrblock($address, '141.98.173.0/24', 'Cogent Other (IP4X-COGENTOTHER-008). ');
$ax += cidrblock($address, '193.57.102.0/24', 'Cogent Other (IP4X-COGENTOTHER-009). ');
$ax += cidrblock($address, '45.87.131.0/24', 'Cogent Other (IP4X-COGENTOTHER-010). ');
$ax += cidrblock($address, '178.21.32.0/24', 'Cogent Other (IP4X-COGENTOTHER-011). ');
$ax += cidrblock($address, '194.76.192.0/24', 'Cogent Other (IP4X-COGENTOTHER-012). ');
$ax += cidrblock($address, '194.76.217.0/24', 'Cogent Other (IP4X-COGENTOTHER-013). ');
$ax += cidrblock($address, '194.76.218.0/24', 'Cogent Other (IP4X-COGENTOTHER-014). ');
$ax += cidrblock($address, '194.76.238.0/24', 'Cogent Other (IP4X-COGENTOTHER-015). ');
$ax += cidrblock($address, '213.146.170.0/24', 'Cogent Other (IP4X-COGENTOTHER-016). ');
$ax += cidrblock($address, '213.146.175.0/24', 'Cogent Other (IP4X-COGENTOTHER-017). ');
$ax += cidrblock($address, '185.170.142.0/24', 'Cogent Other (IP4X-COGENTOTHER-018). ');
$ax += cidrblock($address, '85.116.148.0/22', 'Cogent Other (IP4X-COGENTOTHER-019). ');
$ax += cidrblock($address, '45.170.253.0/24', 'Cogent Other (IP4X-COGENTOTHER-020). ');
$ax += cidrblock($address, '185.30.233.0/24', 'Cogent Other (IP4X-COGENTOTHER-021). ');
$ax += cidrblock($address, '185.215.116.0/22', 'Cogent Other (IP4X-COGENTOTHER-022). ');
$ax += cidrblock($address, '45.145.128.0/23', 'Cogent Other (IP4X-COGENTOTHER-023). ');
$ax += cidrblock($address, '77.243.88.0/22', 'Cogent Other (IP4X-COGENTOTHER-024). ');
$ax += cidrblock($address, '23.237.25.0/24', 'Cogent Other (IP4X-COGENTOTHER-025). ');
$ax += cidrblock($address, '23.237.114.0/23', 'Cogent Other (IP4X-COGENTOTHER-026). ');
$ax += cidrblock($address, '23.237.128.0/23', 'Cogent Other (IP4X-COGENTOTHER-027). ');
$ax += cidrblock($address, '23.237.134.0/23', 'Cogent Other (IP4X-COGENTOTHER-028). ');
$ax += cidrblock($address, '23.237.136.0/22', 'Cogent Other (IP4X-COGENTOTHER-029). ');
$ax += cidrblock($address, '23.237.147.0/24', 'Cogent Other (IP4X-COGENTOTHER-030). ');
$ax += cidrblock($address, '23.237.148.0/22', 'Cogent Other (IP4X-COGENTOTHER-031). ');
$ax += cidrblock($address, '23.237.154.0/23', 'Cogent Other (IP4X-COGENTOTHER-032). ');
$ax += cidrblock($address, '23.237.158.0/23', 'Cogent Other (IP4X-COGENTOTHER-033). ');
$ax += cidrblock($address, '23.237.160.0/23', 'Cogent Other (IP4X-COGENTOTHER-034). ');
$ax += cidrblock($address, '23.237.164.0/22', 'Cogent Other (IP4X-COGENTOTHER-035). ');
$ax += cidrblock($address, '23.237.168.0/22', 'Cogent Other (IP4X-COGENTOTHER-036). ');
$ax += cidrblock($address, '23.237.172.0/24', 'Cogent Other (IP4X-COGENTOTHER-037). ');
$ax += cidrblock($address, '23.237.174.0/23', 'Cogent Other (IP4X-COGENTOTHER-038). ');
$ax += cidrblock($address, '23.237.178.0/23', 'Cogent Other (IP4X-COGENTOTHER-039). ');
$ax += cidrblock($address, '23.237.180.0/24', 'Cogent Other (IP4X-COGENTOTHER-040). ');
$ax += cidrblock($address, '23.237.188.0/23', 'Cogent Other (IP4X-COGENTOTHER-041). ');
$ax += cidrblock($address, '23.237.192.0/23', 'Cogent Other (IP4X-COGENTOTHER-042). ');
$ax += cidrblock($address, '23.237.246.0/23', 'Cogent Other (IP4X-COGENTOTHER-043). ');
$ax += cidrblock($address, '23.237.248.0/23', 'Cogent Other (IP4X-COGENTOTHER-044). ');
$ax += cidrblock($address, '23.237.250.0/24', 'Cogent Other (IP4X-COGENTOTHER-045). ');
$ax += cidrblock($address, '38.20.144.0/22', 'Cogent Other (IP4X-COGENTOTHER-046). ');
$ax += cidrblock($address, '38.20.156.0/22', 'Cogent Other (IP4X-COGENTOTHER-047). ');
$ax += cidrblock($address, '38.27.104.0/24', 'Cogent Other (IP4X-COGENTOTHER-048). ');
$ax += cidrblock($address, '38.64.208.0/22', 'Cogent Other (IP4X-COGENTOTHER-049). ');
$ax += cidrblock($address, '38.68.65.0/24', 'Cogent Other (IP4X-COGENTOTHER-050). ');
$ax += cidrblock($address, '38.68.81.0/24', 'Cogent Other (IP4X-COGENTOTHER-051). ');
$ax += cidrblock($address, '38.69.144.0/24', 'Cogent Other (IP4X-COGENTOTHER-052). ');
$ax += cidrblock($address, '38.69.183.0/24', 'Cogent Other (IP4X-COGENTOTHER-053). ');
$ax += cidrblock($address, '38.70.219.0/24', 'Cogent Other (IP4X-COGENTOTHER-054). ');
$ax += cidrblock($address, '38.74.67.0/24', 'Cogent Other (IP4X-COGENTOTHER-055). ');
$ax += cidrblock($address, '38.75.86.0/24', 'Cogent Other (IP4X-COGENTOTHER-056). ');
$ax += cidrblock($address, '38.84.46.0/24', 'Cogent Other (IP4X-COGENTOTHER-057). ');
$ax += cidrblock($address, '38.86.33.0/24', 'Cogent Other (IP4X-COGENTOTHER-058). ');
$ax += cidrblock($address, '38.86.37.0/24', 'Cogent Other (IP4X-COGENTOTHER-059). ');
$ax += cidrblock($address, '38.86.38.0/23', 'Cogent Other (IP4X-COGENTOTHER-060). ');
$ax += cidrblock($address, '38.87.45.0/24', 'Cogent Other (IP4X-COGENTOTHER-061). ');
$ax += cidrblock($address, '38.88.74.0/24', 'Cogent Other (IP4X-COGENTOTHER-062). ');
$ax += cidrblock($address, '38.88.86.0/24', 'Cogent Other (IP4X-COGENTOTHER-063). ');
$ax += cidrblock($address, '38.92.149.0/24', 'Cogent Other (IP4X-COGENTOTHER-064). ');
$ax += cidrblock($address, '38.94.137.0/24', 'Cogent Other (IP4X-COGENTOTHER-065). ');
$ax += cidrblock($address, '38.95.3.0/24', 'Cogent Other (IP4X-COGENTOTHER-066). ');
$ax += cidrblock($address, '38.96.11.0/24', 'Cogent Other (IP4X-COGENTOTHER-067). ');
$ax += cidrblock($address, '38.96.22.0/24', 'Cogent Other (IP4X-COGENTOTHER-068). ');
$ax += cidrblock($address, '38.96.136.0/23', 'Cogent Other (IP4X-COGENTOTHER-069). ');
$ax += cidrblock($address, '38.98.250.0/24', 'Cogent Other (IP4X-COGENTOTHER-070). ');
$ax += cidrblock($address, '38.99.69.0/24', 'Cogent Other (IP4X-COGENTOTHER-071). ');
$ax += cidrblock($address, '38.99.120.0/23', 'Cogent Other (IP4X-COGENTOTHER-072). ');
$ax += cidrblock($address, '38.99.154.0/24', 'Cogent Other (IP4X-COGENTOTHER-073). ');
$ax += cidrblock($address, '38.99.240.0/24', 'Cogent Other (IP4X-COGENTOTHER-074). ');
$ax += cidrblock($address, '38.100.87.0/24', 'Cogent Other (IP4X-COGENTOTHER-075). ');
$ax += cidrblock($address, '38.100.215.0/24', 'Cogent Other (IP4X-COGENTOTHER-076). ');
$ax += cidrblock($address, '38.101.46.0/23', 'Cogent Other (IP4X-COGENTOTHER-077). ');
$ax += cidrblock($address, '38.101.73.0/24', 'Cogent Other (IP4X-COGENTOTHER-078). ');
$ax += cidrblock($address, '38.101.189.0/24', 'Cogent Other (IP4X-COGENTOTHER-079). ');
$ax += cidrblock($address, '38.101.218.0/24', 'Cogent Other (IP4X-COGENTOTHER-080). ');
$ax += cidrblock($address, '38.102.97.0/24', 'Cogent Other (IP4X-COGENTOTHER-081). ');
$ax += cidrblock($address, '38.102.101.0/24', 'Cogent Other (IP4X-COGENTOTHER-082). ');
$ax += cidrblock($address, '38.102.104.0/21', 'Cogent Other (IP4X-COGENTOTHER-083). ');
$ax += cidrblock($address, '38.102.146.0/24', 'Cogent Other (IP4X-COGENTOTHER-084). ');
$ax += cidrblock($address, '38.102.164.0/24', 'Cogent Other (IP4X-COGENTOTHER-085). ');
$ax += cidrblock($address, '38.102.188.0/22', 'Cogent Other (IP4X-COGENTOTHER-086). ');
$ax += cidrblock($address, '38.105.94.0/24', 'Cogent Other (IP4X-COGENTOTHER-087). ');
$ax += cidrblock($address, '38.105.134.0/24', 'Cogent Other (IP4X-COGENTOTHER-088). ');
$ax += cidrblock($address, '38.105.162.0/24', 'Cogent Other (IP4X-COGENTOTHER-089). ');
$ax += cidrblock($address, '38.106.72.0/22', 'Cogent Other (IP4X-COGENTOTHER-090). ');
$ax += cidrblock($address, '38.106.94.0/23', 'Cogent Other (IP4X-COGENTOTHER-091). ');
$ax += cidrblock($address, '38.106.190.0/24', 'Cogent Other (IP4X-COGENTOTHER-092). ');
$ax += cidrblock($address, '38.108.15.0/24', 'Cogent Other (IP4X-COGENTOTHER-093). ');
$ax += cidrblock($address, '38.108.128.0/23', 'Cogent Other (IP4X-COGENTOTHER-094). ');
$ax += cidrblock($address, '38.108.182.0/24', 'Cogent Other (IP4X-COGENTOTHER-095). ');
$ax += cidrblock($address, '38.109.224.0/24', 'Cogent Other (IP4X-COGENTOTHER-096). ');
$ax += cidrblock($address, '38.110.58.0/24', 'Cogent Other (IP4X-COGENTOTHER-097). ');
$ax += cidrblock($address, '38.110.240.0/20', 'Cogent Other (IP4X-COGENTOTHER-098). ');
$ax += cidrblock($address, '38.111.16.0/24', 'Cogent Other (IP4X-COGENTOTHER-099). ');
$ax += cidrblock($address, '38.111.96.0/23', 'Cogent Other (IP4X-COGENTOTHER-100). ');
$ax += cidrblock($address, '38.111.124.0/23', 'Cogent Other (IP4X-COGENTOTHER-101). ');
$ax += cidrblock($address, '38.111.161.0/24', 'Cogent Other (IP4X-COGENTOTHER-102). ');
$ax += cidrblock($address, '38.114.115.0/24', 'Cogent Other (IP4X-COGENTOTHER-103). ');
$ax += cidrblock($address, '38.117.203.0/24', 'Cogent Other (IP4X-COGENTOTHER-104). ');
$ax += cidrblock($address, '38.121.17.0/24', 'Cogent Other (IP4X-COGENTOTHER-105). ');
$ax += cidrblock($address, '38.121.88.0/21', 'Cogent Other (IP4X-COGENTOTHER-106). ');
$ax += cidrblock($address, '38.123.65.0/24', 'Cogent Other (IP4X-COGENTOTHER-107). ');
$ax += cidrblock($address, '38.123.139.0/24', 'Cogent Other (IP4X-COGENTOTHER-108). ');
$ax += cidrblock($address, '38.123.207.0/24', 'Cogent Other (IP4X-COGENTOTHER-109). ');
$ax += cidrblock($address, '38.124.205.0/24', 'Cogent Other (IP4X-COGENTOTHER-110). ');
$ax += cidrblock($address, '38.125.97.0/24', 'Cogent Other (IP4X-COGENTOTHER-111). ');
$ax += cidrblock($address, '38.125.100.0/24', 'Cogent Other (IP4X-COGENTOTHER-112). ');
$ax += cidrblock($address, '38.125.102.0/24', 'Cogent Other (IP4X-COGENTOTHER-113). ');
$ax += cidrblock($address, '38.125.105.0/24', 'Cogent Other (IP4X-COGENTOTHER-114). ');
$ax += cidrblock($address, '38.126.14.0/24', 'Cogent Other (IP4X-COGENTOTHER-115). ');
$ax += cidrblock($address, '38.126.113.0/24', 'Cogent Other (IP4X-COGENTOTHER-116). ');
$ax += cidrblock($address, '38.126.238.0/23', 'Cogent Other (IP4X-COGENTOTHER-117). ');
$ax += cidrblock($address, '38.126.245.0/24', 'Cogent Other (IP4X-COGENTOTHER-118). ');
$ax += cidrblock($address, '38.127.237.0/24', 'Cogent Other (IP4X-COGENTOTHER-119). ');
$ax += cidrblock($address, '38.127.238.0/24', 'Cogent Other (IP4X-COGENTOTHER-120). ');
$ax += cidrblock($address, '38.128.107.0/24', 'Cogent Other (IP4X-COGENTOTHER-121). ');
$ax += cidrblock($address, '38.130.74.0/24', 'Cogent Other (IP4X-COGENTOTHER-122). ');
$ax += cidrblock($address, '38.130.78.0/24', 'Cogent Other (IP4X-COGENTOTHER-123). ');
$ax += cidrblock($address, '38.130.135.0/24', 'Cogent Other (IP4X-COGENTOTHER-124). ');
$ax += cidrblock($address, '38.130.255.0/24', 'Cogent Other (IP4X-COGENTOTHER-125). ');
$ax += cidrblock($address, '38.131.49.0/24', 'Cogent Other (IP4X-COGENTOTHER-126). ');
$ax += cidrblock($address, '38.131.182.0/23', 'Cogent Other (IP4X-COGENTOTHER-127). ');
$ax += cidrblock($address, '38.133.164.0/23', 'Cogent Other (IP4X-COGENTOTHER-128). ');
$ax += cidrblock($address, '38.133.174.0/24', 'Cogent Other (IP4X-COGENTOTHER-129). ');
$ax += cidrblock($address, '38.133.178.0/24', 'Cogent Other (IP4X-COGENTOTHER-130). ');
$ax += cidrblock($address, '38.133.182.0/23', 'Cogent Other (IP4X-COGENTOTHER-131). ');
$ax += cidrblock($address, '38.133.214.0/24', 'Cogent Other (IP4X-COGENTOTHER-132). ');
$ax += cidrblock($address, '38.135.38.0/24', 'Cogent Other (IP4X-COGENTOTHER-133). ');
$ax += cidrblock($address, '38.135.101.0/24', 'Cogent Other (IP4X-COGENTOTHER-134). ');
$ax += cidrblock($address, '38.143.16.0/23', 'Cogent Other (IP4X-COGENTOTHER-135). ');
$ax += cidrblock($address, '38.143.65.0/24', 'Cogent Other (IP4X-COGENTOTHER-136). ');
$ax += cidrblock($address, '38.143.176.0/22', 'Cogent Other (IP4X-COGENTOTHER-137). ');
$ax += cidrblock($address, '38.146.51.0/24', 'Cogent Other (IP4X-COGENTOTHER-138). ');
$ax += cidrblock($address, '38.146.52.0/24', 'Cogent Other (IP4X-COGENTOTHER-139). ');
$ax += cidrblock($address, '38.146.57.0/24', 'Cogent Other (IP4X-COGENTOTHER-140). ');
$ax += cidrblock($address, '38.146.141.0/24', 'Cogent Other (IP4X-COGENTOTHER-141). ');
$ax += cidrblock($address, '38.146.142.0/24', 'Cogent Other (IP4X-COGENTOTHER-142). ');
$ax += cidrblock($address, '38.146.224.0/24', 'Cogent Other (IP4X-COGENTOTHER-143). ');
$ax += cidrblock($address, '38.147.132.0/24', 'Cogent Other (IP4X-COGENTOTHER-144). ');
$ax += cidrblock($address, '38.240.192.0/19', 'Cogent Other (IP4X-COGENTOTHER-145). ');
$ax += cidrblock($address, '50.7.63.0/24', 'Cogent Other (IP4X-COGENTOTHER-146). ');
$ax += cidrblock($address, '50.7.103.0/24', 'Cogent Other (IP4X-COGENTOTHER-147). ');
$ax += cidrblock($address, '50.7.109.0/24', 'Cogent Other (IP4X-COGENTOTHER-148). ');
$ax += cidrblock($address, '50.7.238.0/23', 'Cogent Other (IP4X-COGENTOTHER-149). ');
$ax += cidrblock($address, '50.7.240.0/23', 'Cogent Other (IP4X-COGENTOTHER-150). ');
$ax += cidrblock($address, '130.117.178.0/24', 'Cogent Other (IP4X-COGENTOTHER-151). ');
$ax += cidrblock($address, '130.117.233.0/24', 'Cogent Other (IP4X-COGENTOTHER-152). ');
$ax += cidrblock($address, '141.193.250.0/24', 'Cogent Other (IP4X-COGENTOTHER-153). ');
$ax += cidrblock($address, '149.5.188.0/24', 'Cogent Other (IP4X-COGENTOTHER-154). ');
$ax += cidrblock($address, '149.5.225.0/24', 'Cogent Other (IP4X-COGENTOTHER-155). ');
$ax += cidrblock($address, '149.12.214.0/24', 'Cogent Other (IP4X-COGENTOTHER-156). ');
$ax += cidrblock($address, '149.100.1.0/24', 'Cogent Other (IP4X-COGENTOTHER-157). ');
$ax += cidrblock($address, '154.3.0.0/16', 'Cogent Other (IP4X-COGENTOTHER-158). ');
$ax += cidrblock($address, '154.6.0.0/15', 'Cogent Other (IP4X-COGENTOTHER-159). ');
$ax += cidrblock($address, '154.9.0.0/16', 'Cogent Other (IP4X-COGENTOTHER-160). ');
$ax += cidrblock($address, '154.12.0.0/15', 'Cogent Other (IP4X-COGENTOTHER-161). ');
$ax += cidrblock($address, '154.17.208.0/20', 'Cogent Other (IP4X-COGENTOTHER-162). ');
$ax += cidrblock($address, '154.17.224.0/20', 'Cogent Other (IP4X-COGENTOTHER-163). ');
$ax += cidrblock($address, '154.17.248.0/22', 'Cogent Other (IP4X-COGENTOTHER-164). ');
$ax += cidrblock($address, '154.17.252.0/24', 'Cogent Other (IP4X-COGENTOTHER-165). ');
$ax += cidrblock($address, '154.17.254.0/23', 'Cogent Other (IP4X-COGENTOTHER-166). ');
$ax += cidrblock($address, '154.18.0.0/15', 'Cogent Other (IP4X-COGENTOTHER-167). ');
$ax += cidrblock($address, '154.21.0.0/16', 'Cogent Other (IP4X-COGENTOTHER-168). ');
$ax += cidrblock($address, '154.22.0.0/23', 'Cogent Other (IP4X-COGENTOTHER-169). ');
$ax += cidrblock($address, '154.22.128.0/23', 'Cogent Other (IP4X-COGENTOTHER-170). ');
$ax += cidrblock($address, '154.24.0.0/13', 'Cogent Other (IP4X-COGENTOTHER-171). ');
$ax += cidrblock($address, '154.36.0.0/14', 'Cogent Other (IP4X-COGENTOTHER-172). ');
$ax += cidrblock($address, '154.40.0.0/13', 'Cogent Other (IP4X-COGENTOTHER-173). ');
$ax += cidrblock($address, '154.48.0.0/12', 'Cogent Other (IP4X-COGENTOTHER-174). ');
$ax += cidrblock($address, '154.64.0.0/16', 'Cogent Other (IP4X-COGENTOTHER-175). ');
$ax += cidrblock($address, '158.51.203.0/24', 'Cogent Other (IP4X-COGENTOTHER-176). ');
$ax += cidrblock($address, '162.221.136.0/23', 'Cogent Other (IP4X-COGENTOTHER-177). ');
$ax += cidrblock($address, '162.244.112.0/21', 'Cogent Other (IP4X-COGENTOTHER-178). ');
$ax += cidrblock($address, '198.16.117.0/24', 'Cogent Other (IP4X-COGENTOTHER-179). ');
$ax += cidrblock($address, '198.153.70.0/24', 'Cogent Other (IP4X-COGENTOTHER-180). ');
$ax += cidrblock($address, '205.254.192.0/19', 'Cogent Other (IP4X-COGENTOTHER-181). ');
$ax += cidrblock($address, '206.197.34.0/24', 'Cogent Other (IP4X-COGENTOTHER-182). ');
$ax += cidrblock($address, '209.146.48.0/21', 'Cogent Other (IP4X-COGENTOTHER-183). ');
$ax += cidrblock($address, '216.152.18.0/24', 'Cogent Other (IP4X-COGENTOTHER-184). ');


// ASN 36351 ("SoftLayer Technologies").
// Careful when updating; Signatures reflect varying block reasons, split across multiple files.

// SoftLayer VPNs and proxies.
// Includes: Anything citing "TEFINCOM", "Packet Flip", "VPN", "proxy", "Privat Kommunikation", "Secure Internet".
// ^(.*(TEFINCOM|Packet Flip|VPN|Proxy|Privat Kommunikation|Secure Internet).*)$
// Excludes: Everything else.
// Updated: 2020.01.01

$ax += cidrblock($address, '185.99.135.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-00). ');
$ax += cidrblock($address, '93.114.92.0/22', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-01). ');
$ax += cidrblock($address, '185.153.176.0/23', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-02). ');
$ax += cidrblock($address, '185.161.200.0/23', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-03). ');
$ax += cidrblock($address, '185.203.122.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-04). ');
$ax += cidrblock($address, '46.244.28.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-05). ');
$ax += cidrblock($address, '85.203.23.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-06). ');
$ax += cidrblock($address, '103.86.96.0/23', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-07). ');
$ax += cidrblock($address, '103.86.98.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-08). ');
$ax += cidrblock($address, '192.121.245.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-09). ');
$ax += cidrblock($address, '193.183.216.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-10). ');
$ax += cidrblock($address, '194.132.123.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-11). ');
$ax += cidrblock($address, '45.41.147.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-12). ');
$ax += cidrblock($address, '45.56.146.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-13). ');
$ax += cidrblock($address, '45.56.149.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-14). ');
$ax += cidrblock($address, '45.56.151.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-15). ');
$ax += cidrblock($address, '45.56.152.0/23', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-16). ');
$ax += cidrblock($address, '45.56.154.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-17). ');
$ax += cidrblock($address, '45.56.156.0/23', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-18). ');
$ax += cidrblock($address, '45.56.158.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-19). ');
$ax += cidrblock($address, '45.74.31.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-20). ');
$ax += cidrblock($address, '45.74.39.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-21). ');
$ax += cidrblock($address, '45.74.41.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-22). ');
$ax += cidrblock($address, '45.74.43.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-23). ');
$ax += cidrblock($address, '64.64.108.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-24). ');
$ax += cidrblock($address, '104.37.1.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-25). ');
$ax += cidrblock($address, '104.37.3.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-26). ');
$ax += cidrblock($address, '104.37.5.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-27). ');
$ax += cidrblock($address, '104.143.92.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-28). ');
$ax += cidrblock($address, '104.143.95.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-29). ');
$ax += cidrblock($address, '104.194.203.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-30). ');
$ax += cidrblock($address, '104.194.218.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-31). ');
$ax += cidrblock($address, '104.238.32.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-32). ');
$ax += cidrblock($address, '104.238.45.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-33). ');
$ax += cidrblock($address, '104.238.51.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-34). ');
$ax += cidrblock($address, '104.238.62.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-35). ');
$ax += cidrblock($address, '104.243.245.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-36). ');
$ax += cidrblock($address, '104.243.253.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-37). ');
$ax += cidrblock($address, '104.243.255.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-38). ');
$ax += cidrblock($address, '104.250.160.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-39). ');
$ax += cidrblock($address, '104.250.167.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-40). ');
$ax += cidrblock($address, '104.250.172.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-41). ');
$ax += cidrblock($address, '104.250.179.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-42). ');
$ax += cidrblock($address, '104.250.183.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-43). ');
$ax += cidrblock($address, '172.94.47.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-44). ');
$ax += cidrblock($address, '172.94.98.0/23', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-45). ');
$ax += cidrblock($address, '172.94.100.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-46). ');
$ax += cidrblock($address, '172.94.103.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-47). ');
$ax += cidrblock($address, '172.111.169.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-48). ');
$ax += cidrblock($address, '172.111.173.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-49). ');
$ax += cidrblock($address, '172.111.175.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-50). ');
$ax += cidrblock($address, '172.111.178.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-51). ');
$ax += cidrblock($address, '172.111.187.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-52). ');
$ax += cidrblock($address, '172.111.192.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-53). ');
$ax += cidrblock($address, '172.111.199.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-54). ');
$ax += cidrblock($address, '173.239.195.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-55). ');
$ax += cidrblock($address, '173.239.197.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-56). ');
$ax += cidrblock($address, '173.239.198.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-57). ');
$ax += cidrblock($address, '173.239.207.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-58). ');
$ax += cidrblock($address, '173.244.55.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-59). ');
$ax += cidrblock($address, '192.253.242.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-60). ');
$ax += cidrblock($address, '196.52.96.0/24', 'SoftLayer VPNs (IP4X-SOFTLAYERVPNS-61). ');


// ASN 59898 ("AllSafe Sarl").
// Related to "ProtonVPN", "ProtonMail", and "Proton Technologies". Provides
// VPNs and proxies, both public and private.
// Updated: 2020.01.02

$ax += cidrblock($address, '185.159.157.0/24', 'AllSafe Sarl (IP4X-ALLSAFESARL-0). ');
$ax += cidrblock($address, '185.167.4.0/24', 'AllSafe Sarl (IP4X-ALLSAFESARL-1). ');
$ax += cidrblock($address, '185.167.6.0/23', 'AllSafe Sarl (IP4X-ALLSAFESARL-2). ');
$ax += cidrblock($address, '185.196.137.0/24', 'AllSafe Sarl (IP4X-ALLSAFESARL-3). ');


// ASN 205100 ("F3 Netze e.V").
// Provides TOR exit nodes.
// Updated: 2018.04.23 / Checked: 2020.01.02

$ax += cidrblock($address, '185.220.100.0/24', 'F3 Netze e.V (IP4X-F3NETZEEV-0). ');


// ASN 209519 ("Packet Flip, LLC").
// Proxy service sometimes used by spammmers and other nefarious entities.
// Updated: 2019.12.14

$ax += cidrblock($address, '86.106.120.0/24', 'Packet Flip (IP4X-PACKETFLIP-00). ');
$ax += cidrblock($address, '89.35.164.0/22', 'Packet Flip (IP4X-PACKETFLIP-01). ');
$ax += cidrblock($address, '89.36.232.0/22', 'Packet Flip (IP4X-PACKETFLIP-02). ');
$ax += cidrblock($address, '89.37.28.0/24', 'Packet Flip (IP4X-PACKETFLIP-03). ');
$ax += cidrblock($address, '89.38.106.0/23', 'Packet Flip (IP4X-PACKETFLIP-04). ');
$ax += cidrblock($address, '89.39.150.0/24', 'Packet Flip (IP4X-PACKETFLIP-05). ');
$ax += cidrblock($address, '89.40.108.0/23', 'Packet Flip (IP4X-PACKETFLIP-06). ');
$ax += cidrblock($address, '89.42.48.0/23', 'Packet Flip (IP4X-PACKETFLIP-07). ');
$ax += cidrblock($address, '89.43.51.0/24', 'Packet Flip (IP4X-PACKETFLIP-08). ');
$ax += cidrblock($address, '89.43.68.0/23', 'Packet Flip (IP4X-PACKETFLIP-09). ');
$ax += cidrblock($address, '89.46.132.0/22', 'Packet Flip (IP4X-PACKETFLIP-10). ');
$ax += cidrblock($address, '93.114.92.0/22', 'Packet Flip (IP4X-PACKETFLIP-11). ');
$ax += cidrblock($address, '93.115.102.0/23', 'Packet Flip (IP4X-PACKETFLIP-12). ');
$ax += cidrblock($address, '93.118.40.0/22', 'Packet Flip (IP4X-PACKETFLIP-13). ');
$ax += cidrblock($address, '188.210.94.0/23', 'Packet Flip (IP4X-PACKETFLIP-14). ');
$ax += cidrblock($address, '188.212.120.0/24', 'Packet Flip (IP4X-PACKETFLIP-15). ');
$ax += cidrblock($address, '31.207.8.0/21', 'Packet Flip (IP4X-PACKETFLIP-16). ');
$ax += cidrblock($address, '31.207.16.0/20', 'Packet Flip (IP4X-PACKETFLIP-17). ');
$ax += cidrblock($address, '46.102.148.0/22', 'Packet Flip (IP4X-PACKETFLIP-18). ');
$ax += cidrblock($address, '80.240.103.0/24', 'Packet Flip (IP4X-PACKETFLIP-19). ');
$ax += cidrblock($address, '80.240.108.0/23', 'Packet Flip (IP4X-PACKETFLIP-20). ');
$ax += cidrblock($address, '80.240.111.0/24', 'Packet Flip (IP4X-PACKETFLIP-21). ');
$ax += cidrblock($address, '82.97.192.0/23', 'Packet Flip (IP4X-PACKETFLIP-22). ');
$ax += cidrblock($address, '82.97.196.0/23', 'Packet Flip (IP4X-PACKETFLIP-23). ');
$ax += cidrblock($address, '82.97.199.0/24', 'Packet Flip (IP4X-PACKETFLIP-24). ');
$ax += cidrblock($address, '82.97.200.0/24', 'Packet Flip (IP4X-PACKETFLIP-25). ');
$ax += cidrblock($address, '84.247.32.0/22', 'Packet Flip (IP4X-PACKETFLIP-26). ');
$ax += cidrblock($address, '86.105.160.0/22', 'Packet Flip (IP4X-PACKETFLIP-27). ');
$ax += cidrblock($address, '89.32.184.0/24', 'Packet Flip (IP4X-PACKETFLIP-28). ');
$ax += cidrblock($address, '89.32.203.0/24', 'Packet Flip (IP4X-PACKETFLIP-29). ');
$ax += cidrblock($address, '89.44.213.0/24', 'Packet Flip (IP4X-PACKETFLIP-30). ');
$ax += cidrblock($address, '89.47.63.0/24', 'Packet Flip (IP4X-PACKETFLIP-31). ');
$ax += cidrblock($address, '93.115.48.0/22', 'Packet Flip (IP4X-PACKETFLIP-32). ');
$ax += cidrblock($address, '185.125.64.0/22', 'Packet Flip (IP4X-PACKETFLIP-33). ');
$ax += cidrblock($address, '188.214.40.0/21', 'Packet Flip (IP4X-PACKETFLIP-34). ');
$ax += cidrblock($address, '188.240.32.0/22', 'Packet Flip (IP4X-PACKETFLIP-35). ');
$ax += cidrblock($address, '193.124.240.0/22', 'Packet Flip (IP4X-PACKETFLIP-36). ');
$ax += cidrblock($address, '194.58.24.0/22', 'Packet Flip (IP4X-PACKETFLIP-37). ');
$ax += cidrblock($address, '194.58.216.0/22', 'Packet Flip (IP4X-PACKETFLIP-38). ');
$ax += cidrblock($address, '194.135.48.0/22', 'Packet Flip (IP4X-PACKETFLIP-39). ');
$ax += cidrblock($address, '195.189.36.0/22', 'Packet Flip (IP4X-PACKETFLIP-40). ');
$ax += cidrblock($address, '195.189.132.0/23', 'Packet Flip (IP4X-PACKETFLIP-41). ');
$ax += cidrblock($address, '45.43.2.0/23', 'Packet Flip (IP4X-PACKETFLIP-42). ');
$ax += cidrblock($address, '45.43.10.0/23', 'Packet Flip (IP4X-PACKETFLIP-43). ');
$ax += cidrblock($address, '45.43.12.0/22', 'Packet Flip (IP4X-PACKETFLIP-44). ');
$ax += cidrblock($address, '45.43.16.0/22', 'Packet Flip (IP4X-PACKETFLIP-45). ');
$ax += cidrblock($address, '45.43.20.0/24', 'Packet Flip (IP4X-PACKETFLIP-46). ');
$ax += cidrblock($address, '45.43.22.0/24', 'Packet Flip (IP4X-PACKETFLIP-47). ');
$ax += cidrblock($address, '45.43.24.0/24', 'Packet Flip (IP4X-PACKETFLIP-48). ');
$ax += cidrblock($address, '66.11.112.0/23', 'Packet Flip (IP4X-PACKETFLIP-49). ');
$ax += cidrblock($address, '66.11.114.0/24', 'Packet Flip (IP4X-PACKETFLIP-50). ');
$ax += cidrblock($address, '66.11.116.0/24', 'Packet Flip (IP4X-PACKETFLIP-51). ');
$ax += cidrblock($address, '66.11.118.0/24', 'Packet Flip (IP4X-PACKETFLIP-52). ');
$ax += cidrblock($address, '66.11.123.0/24', 'Packet Flip (IP4X-PACKETFLIP-53). ');
$ax += cidrblock($address, '74.91.32.0/20', 'Packet Flip (IP4X-PACKETFLIP-54). ');
$ax += cidrblock($address, '104.255.224.0/24', 'Packet Flip (IP4X-PACKETFLIP-55). ');
$ax += cidrblock($address, '104.255.226.0/24', 'Packet Flip (IP4X-PACKETFLIP-56). ');
$ax += cidrblock($address, '104.255.228.0/24', 'Packet Flip (IP4X-PACKETFLIP-57). ');
$ax += cidrblock($address, '104.255.230.0/24', 'Packet Flip (IP4X-PACKETFLIP-58). ');
$ax += cidrblock($address, '196.52.176.0/20', 'Packet Flip (IP4X-PACKETFLIP-59). ');
$ax += cidrblock($address, '196.52.224.0/20', 'Packet Flip (IP4X-PACKETFLIP-60). ');
$ax += cidrblock($address, '196.54.208.0/20', 'Packet Flip (IP4X-PACKETFLIP-61). ');
$ax += cidrblock($address, '196.55.176.0/20', 'Packet Flip (IP4X-PACKETFLIP-62). ');


// ASNs 42708, 43948 ("GleSYS AB"; formerly "Portlane AB").
// Exclude (carries human endpoints and seems clean):
// - "^.*Internetbolaget.*$\n"
// Mark as proxy:
// - "^(.*(?:Tunnel|Edelino).*)$"
// Mark as cloud:
// - "^(.*(?:Host|Netelia|Sveaab|GleSYS|Servinga|Webbplatsen|InfoGuard).*)$"
// Mark as spam (carries human endpoints, but also poses a spam risk):
// - "^(.*(?:Svenska).*)$"
// Everything else mark as generic.
// Updated: 2020.01.23

$ax += cidrblock($address, '5.249.160.0/21', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-0). ');
$ax += cidrblock($address, '5.254.133.0/24', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-1). ');
$ax += cidrblock($address, '5.254.134.0/23', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-2). ');
$ax += cidrblock($address, '5.254.139.0/24', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-3). ');
$ax += cidrblock($address, '5.254.140.0/22', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-4). ');
$ax += cidrblock($address, '5.254.144.0/23', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-5). ');
$ax += cidrblock($address, '5.254.146.0/24', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-6). ');
$ax += cidrblock($address, '5.254.152.0/21', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-7). ');
$ax += cidrblock($address, '185.5.44.0/24', 'Portlane Networks AB (IP4X-PORTLANENETWORKSAB-8). ');


// ASN 396507 ("Emerald Onion").
// Anonymous tor endpoint; Significant source of spam.
// Updated: 2019.05.03 / Checked: 2020.01.02

$ax += cidrblock($address, '23.129.64.0/24', 'Emerald Onion (IP4X-EMERALDONION-0). ');


// Adapted from Spamhaus DROP/EDROP text lists.
// The DROP/EDROP text lists are copyrighted to Spamhaus.org; Spamhaus DROP/EDROP as plain text lists are free for
// commercial and non-commercial usage. If you want to redistribute one of the plain text feeds please ensure that you
// name Spamhaus as source of the data. (For example, include the copyright statement at the top of the list).
// Updated: 2019.10.23
// Refer spamhaus.org/drop/drop.txt
// Refer spamhaus.org/drop/edrop.txt

$ax += cidrblock($address, '1.10.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-000). ');
$ax += cidrblock($address, '1.19.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-001). ');
$ax += cidrblock($address, '1.32.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-002). ');
$ax += cidrblock($address, '2.56.255.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-003). ');
$ax += cidrblock($address, '2.58.92.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-004). ');
$ax += cidrblock($address, '2.59.151.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-005). ');
$ax += cidrblock($address, '2.59.248.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-006). ');
$ax += cidrblock($address, '5.8.37.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-007). ');
$ax += cidrblock($address, '5.101.221.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-008). ');
$ax += cidrblock($address, '5.134.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-009). ');
$ax += cidrblock($address, '5.144.176.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-010). ');
$ax += cidrblock($address, '5.188.10.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-011). ');
$ax += cidrblock($address, '5.188.207.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-012). ');
$ax += cidrblock($address, '5.188.216.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-013). ');
$ax += cidrblock($address, '5.253.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-014). ');
$ax += cidrblock($address, '23.92.80.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-015). ');
$ax += cidrblock($address, '23.226.48.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-016). ');
$ax += cidrblock($address, '23.239.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-017). ');
$ax += cidrblock($address, '24.233.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-018). ');
$ax += cidrblock($address, '27.112.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-019). ');
$ax += cidrblock($address, '27.126.160.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-020). ');
$ax += cidrblock($address, '27.146.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-021). ');
$ax += cidrblock($address, '31.11.43.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-022). ');
$ax += cidrblock($address, '31.184.237.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-023). ');
$ax += cidrblock($address, '31.222.200.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-024). ');
$ax += cidrblock($address, '36.0.8.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-025). ');
$ax += cidrblock($address, '36.37.48.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-026). ');
$ax += cidrblock($address, '36.93.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-027). ');
$ax += cidrblock($address, '36.116.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-028). ');
$ax += cidrblock($address, '36.119.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-029). ');
$ax += cidrblock($address, '37.9.42.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-030). ');
$ax += cidrblock($address, '37.44.228.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-031). ');
$ax += cidrblock($address, '37.139.128.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-032). ');
$ax += cidrblock($address, '37.148.216.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-033). ');
$ax += cidrblock($address, '37.246.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-034). ');
$ax += cidrblock($address, '37.252.220.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-035). ');
$ax += cidrblock($address, '38.39.160.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-036). ');
$ax += cidrblock($address, '42.0.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-037). ');
$ax += cidrblock($address, '42.1.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-038). ');
$ax += cidrblock($address, '42.96.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-039). ');
$ax += cidrblock($address, '42.128.0.0/12', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-040). ');
$ax += cidrblock($address, '42.160.0.0/12', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-041). ');
$ax += cidrblock($address, '42.194.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-042). ');
$ax += cidrblock($address, '42.208.0.0/12', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-043). ');
$ax += cidrblock($address, '43.57.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-044). ');
$ax += cidrblock($address, '43.181.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-045). ');
$ax += cidrblock($address, '43.229.52.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-046). ');
$ax += cidrblock($address, '43.236.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-047). ');
$ax += cidrblock($address, '43.250.116.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-048). ');
$ax += cidrblock($address, '43.252.80.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-049). ');
$ax += cidrblock($address, '45.4.128.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-050). ');
$ax += cidrblock($address, '45.4.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-051). ');
$ax += cidrblock($address, '45.6.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-052). ');
$ax += cidrblock($address, '45.8.72.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-053). ');
$ax += cidrblock($address, '45.9.156.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-054). ');
$ax += cidrblock($address, '45.9.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-055). ');
$ax += cidrblock($address, '45.14.164.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-056). ');
$ax += cidrblock($address, '45.41.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-057). ');
$ax += cidrblock($address, '45.41.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-058). ');
$ax += cidrblock($address, '45.43.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-059). ');
$ax += cidrblock($address, '45.59.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-060). ');
$ax += cidrblock($address, '45.65.188.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-061). ');
$ax += cidrblock($address, '45.67.14.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-062). ');
$ax += cidrblock($address, '45.67.140.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-063). ');
$ax += cidrblock($address, '45.67.144.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-064). ');
$ax += cidrblock($address, '45.81.36.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-065). ');
$ax += cidrblock($address, '45.114.240.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-066). ');
$ax += cidrblock($address, '45.117.52.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-067). ');
$ax += cidrblock($address, '45.117.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-068). ');
$ax += cidrblock($address, '45.117.232.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-069). ');
$ax += cidrblock($address, '45.121.204.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-070). ');
$ax += cidrblock($address, '45.141.80.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-071). ');
$ax += cidrblock($address, '46.3.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-072). ');
$ax += cidrblock($address, '46.148.112.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-073). ');
$ax += cidrblock($address, '46.148.120.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-074). ');
$ax += cidrblock($address, '46.148.127.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-075). ');
$ax += cidrblock($address, '46.232.112.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-076). ');
$ax += cidrblock($address, '46.232.192.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-077). ');
$ax += cidrblock($address, '46.243.142.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-078). ');
$ax += cidrblock($address, '49.8.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-079). ');
$ax += cidrblock($address, '49.156.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-080). ');
$ax += cidrblock($address, '49.238.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-081). ');
$ax += cidrblock($address, '58.2.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-082). ');
$ax += cidrblock($address, '58.14.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-083). ');
$ax += cidrblock($address, '59.254.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-084). ');
$ax += cidrblock($address, '60.233.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-085). ');
$ax += cidrblock($address, '61.11.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-086). ');
$ax += cidrblock($address, '61.45.251.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-087). ');
$ax += cidrblock($address, '62.60.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-088). ');
$ax += cidrblock($address, '62.60.208.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-089). ');
$ax += cidrblock($address, '62.60.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-090). ');
$ax += cidrblock($address, '62.112.16.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-091). ');
$ax += cidrblock($address, '62.182.156.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-092). ');
$ax += cidrblock($address, '64.94.48.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-093). ');
$ax += cidrblock($address, '64.137.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-094). ');
$ax += cidrblock($address, '67.213.112.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-095). ');
$ax += cidrblock($address, '67.219.208.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-096). ');
$ax += cidrblock($address, '74.114.148.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-097). ');
$ax += cidrblock($address, '74.217.146.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-098). ');
$ax += cidrblock($address, '77.247.109.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-099). ');
$ax += cidrblock($address, '79.110.17.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-100). ');
$ax += cidrblock($address, '79.110.18.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-101). ');
$ax += cidrblock($address, '79.110.22.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-102). ');
$ax += cidrblock($address, '79.110.25.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-103). ');
$ax += cidrblock($address, '79.110.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-104). ');
$ax += cidrblock($address, '79.110.60.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-105). ');
$ax += cidrblock($address, '79.133.107.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-106). ');
$ax += cidrblock($address, '79.173.104.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-107). ');
$ax += cidrblock($address, '81.22.45.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-108). ');
$ax += cidrblock($address, '81.31.192.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-109). ');
$ax += cidrblock($address, '81.94.43.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-110). ');
$ax += cidrblock($address, '81.161.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-111). ');
$ax += cidrblock($address, '82.115.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-112). ');
$ax += cidrblock($address, '83.143.112.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-113). ');
$ax += cidrblock($address, '83.171.204.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-114). ');
$ax += cidrblock($address, '83.175.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-115). ');
$ax += cidrblock($address, '83.219.96.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-116). ');
$ax += cidrblock($address, '84.238.160.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-117). ');
$ax += cidrblock($address, '85.121.39.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-118). ');
$ax += cidrblock($address, '85.208.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-119). ');
$ax += cidrblock($address, '85.209.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-120). ');
$ax += cidrblock($address, '86.55.40.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-121). ');
$ax += cidrblock($address, '86.104.222.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-122). ');
$ax += cidrblock($address, '86.104.224.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-123). ');
$ax += cidrblock($address, '86.106.138.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-124). ');
$ax += cidrblock($address, '86.106.140.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-125). ');
$ax += cidrblock($address, '88.218.76.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-126). ');
$ax += cidrblock($address, '89.35.90.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-127). ');
$ax += cidrblock($address, '89.39.69.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-128). ');
$ax += cidrblock($address, '89.40.207.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-129). ');
$ax += cidrblock($address, '91.193.75.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-130). ');
$ax += cidrblock($address, '91.197.196.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-131). ');
$ax += cidrblock($address, '91.200.12.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-132). ');
$ax += cidrblock($address, '91.200.81.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-133). ');
$ax += cidrblock($address, '91.200.82.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-134). ');
$ax += cidrblock($address, '91.200.164.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-135). ');
$ax += cidrblock($address, '91.200.248.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-136). ');
$ax += cidrblock($address, '91.209.12.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-137). ');
$ax += cidrblock($address, '91.212.104.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-138). ');
$ax += cidrblock($address, '91.216.3.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-139). ');
$ax += cidrblock($address, '91.218.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-140). ');
$ax += cidrblock($address, '91.220.163.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-141). ');
$ax += cidrblock($address, '91.230.252.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-142). ');
$ax += cidrblock($address, '91.234.36.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-143). ');
$ax += cidrblock($address, '91.234.99.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-144). ');
$ax += cidrblock($address, '91.236.74.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-145). ');
$ax += cidrblock($address, '91.240.165.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-146). ');
$ax += cidrblock($address, '91.243.90.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-147). ');
$ax += cidrblock($address, '91.243.93.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-148). ');
$ax += cidrblock($address, '91.247.76.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-149). ');
$ax += cidrblock($address, '92.119.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-150). ');
$ax += cidrblock($address, '92.249.28.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-151). ');
$ax += cidrblock($address, '93.114.51.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-152). ');
$ax += cidrblock($address, '93.114.52.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-153). ');
$ax += cidrblock($address, '93.114.54.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-154). ');
$ax += cidrblock($address, '93.179.88.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-155). ');
$ax += cidrblock($address, '94.103.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-156). ');
$ax += cidrblock($address, '94.154.160.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-157). ');
$ax += cidrblock($address, '94.154.168.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-158). ');
$ax += cidrblock($address, '94.154.176.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-159). ');
$ax += cidrblock($address, '95.85.80.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-160). ');
$ax += cidrblock($address, '95.181.176.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-161). ');
$ax += cidrblock($address, '95.181.182.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-162). ');
$ax += cidrblock($address, '95.181.216.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-163). ');
$ax += cidrblock($address, '95.181.219.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-164). ');
$ax += cidrblock($address, '95.214.24.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-165). ');
$ax += cidrblock($address, '101.42.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-166). ');
$ax += cidrblock($address, '101.134.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-167). ');
$ax += cidrblock($address, '101.192.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-168). ');
$ax += cidrblock($address, '101.202.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-169). ');
$ax += cidrblock($address, '101.203.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-170). ');
$ax += cidrblock($address, '101.248.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-171). ');
$ax += cidrblock($address, '101.252.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-172). ');
$ax += cidrblock($address, '102.11.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-173). ');
$ax += cidrblock($address, '102.13.240.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-174). ');
$ax += cidrblock($address, '102.18.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-175). ');
$ax += cidrblock($address, '102.28.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-176). ');
$ax += cidrblock($address, '102.29.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-177). ');
$ax += cidrblock($address, '102.196.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-178). ');
$ax += cidrblock($address, '102.211.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-179). ');
$ax += cidrblock($address, '102.212.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-180). ');
$ax += cidrblock($address, '102.228.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-181). ');
$ax += cidrblock($address, '102.232.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-182). ');
$ax += cidrblock($address, '102.240.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-183). ');
$ax += cidrblock($address, '103.14.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-184). ');
$ax += cidrblock($address, '103.16.76.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-185). ');
$ax += cidrblock($address, '103.23.8.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-186). ');
$ax += cidrblock($address, '103.23.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-187). ');
$ax += cidrblock($address, '103.24.232.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-188). ');
$ax += cidrblock($address, '103.30.12.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-189). ');
$ax += cidrblock($address, '103.32.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-190). ');
$ax += cidrblock($address, '103.34.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-191). ');
$ax += cidrblock($address, '103.35.160.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-192). ');
$ax += cidrblock($address, '103.36.64.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-193). ');
$ax += cidrblock($address, '103.57.248.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-194). ');
$ax += cidrblock($address, '103.100.168.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-195). ');
$ax += cidrblock($address, '103.144.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-196). ');
$ax += cidrblock($address, '103.148.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-197). ');
$ax += cidrblock($address, '103.155.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-198). ');
$ax += cidrblock($address, '103.158.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-199). ');
$ax += cidrblock($address, '103.167.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-200). ');
$ax += cidrblock($address, '103.171.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-201). ');
$ax += cidrblock($address, '103.174.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-202). ');
$ax += cidrblock($address, '103.180.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-203). ');
$ax += cidrblock($address, '103.189.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-204). ');
$ax += cidrblock($address, '103.197.8.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-205). ');
$ax += cidrblock($address, '103.197.240.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-206). ');
$ax += cidrblock($address, '103.199.88.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-207). ');
$ax += cidrblock($address, '103.205.84.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-208). ');
$ax += cidrblock($address, '103.207.160.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-209). ');
$ax += cidrblock($address, '103.215.80.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-210). ');
$ax += cidrblock($address, '103.225.72.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-211). ');
$ax += cidrblock($address, '103.225.128.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-212). ');
$ax += cidrblock($address, '103.226.192.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-213). ');
$ax += cidrblock($address, '103.228.60.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-214). ');
$ax += cidrblock($address, '103.229.36.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-215). ');
$ax += cidrblock($address, '103.229.40.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-216). ');
$ax += cidrblock($address, '103.230.144.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-217). ');
$ax += cidrblock($address, '103.232.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-218). ');
$ax += cidrblock($address, '103.232.172.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-219). ');
$ax += cidrblock($address, '103.236.32.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-220). ');
$ax += cidrblock($address, '103.239.28.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-221). ');
$ax += cidrblock($address, '103.239.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-222). ');
$ax += cidrblock($address, '103.243.8.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-223). ');
$ax += cidrblock($address, '103.243.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-224). ');
$ax += cidrblock($address, '104.153.244.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-225). ');
$ax += cidrblock($address, '104.166.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-226). ');
$ax += cidrblock($address, '104.207.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-227). ');
$ax += cidrblock($address, '104.222.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-228). ');
$ax += cidrblock($address, '104.233.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-229). ');
$ax += cidrblock($address, '104.239.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-230). ');
$ax += cidrblock($address, '104.243.192.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-231). ');
$ax += cidrblock($address, '104.247.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-232). ');
$ax += cidrblock($address, '104.250.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-233). ');
$ax += cidrblock($address, '106.95.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-234). ');
$ax += cidrblock($address, '107.155.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-235). ');
$ax += cidrblock($address, '107.182.112.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-236). ');
$ax += cidrblock($address, '107.182.240.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-237). ');
$ax += cidrblock($address, '107.190.160.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-238). ');
$ax += cidrblock($address, '109.206.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-239). ');
$ax += cidrblock($address, '109.206.240.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-240). ');
$ax += cidrblock($address, '110.41.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-241). ');
$ax += cidrblock($address, '111.223.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-242). ');
$ax += cidrblock($address, '113.201.51.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-243). ');
$ax += cidrblock($address, '113.212.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-244). ');
$ax += cidrblock($address, '116.79.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-245). ');
$ax += cidrblock($address, '116.119.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-246). ');
$ax += cidrblock($address, '116.144.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-247). ');
$ax += cidrblock($address, '117.58.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-248). ');
$ax += cidrblock($address, '117.120.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-249). ');
$ax += cidrblock($address, '119.58.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-250). ');
$ax += cidrblock($address, '119.227.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-251). ');
$ax += cidrblock($address, '119.232.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-252). ');
$ax += cidrblock($address, '120.46.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-253). ');
$ax += cidrblock($address, '120.48.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-254). ');
$ax += cidrblock($address, '120.64.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-255). ');
$ax += cidrblock($address, '120.67.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-256). ');
$ax += cidrblock($address, '120.128.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-257). ');
$ax += cidrblock($address, '120.129.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-258). ');
$ax += cidrblock($address, '120.130.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-259). ');
$ax += cidrblock($address, '121.46.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-260). ');
$ax += cidrblock($address, '121.100.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-261). ');
$ax += cidrblock($address, '122.8.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-262). ');
$ax += cidrblock($address, '122.129.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-263). ');
$ax += cidrblock($address, '122.185.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-264). ');
$ax += cidrblock($address, '123.136.80.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-265). ');
$ax += cidrblock($address, '123.249.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-266). ');
$ax += cidrblock($address, '124.20.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-267). ');
$ax += cidrblock($address, '124.68.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-268). ');
$ax += cidrblock($address, '124.157.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-269). ');
$ax += cidrblock($address, '124.242.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-270). ');
$ax += cidrblock($address, '125.31.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-271). ');
$ax += cidrblock($address, '125.58.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-272). ');
$ax += cidrblock($address, '125.169.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-273). ');
$ax += cidrblock($address, '128.24.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-274). ');
$ax += cidrblock($address, '128.85.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-275). ');
$ax += cidrblock($address, '128.188.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-276). ');
$ax += cidrblock($address, '130.21.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-277). ');
$ax += cidrblock($address, '130.148.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-278). ');
$ax += cidrblock($address, '130.196.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-279). ');
$ax += cidrblock($address, '130.222.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-280). ');
$ax += cidrblock($address, '131.72.60.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-281). ');
$ax += cidrblock($address, '131.72.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-282). ');
$ax += cidrblock($address, '131.108.16.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-283). ');
$ax += cidrblock($address, '131.108.232.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-284). ');
$ax += cidrblock($address, '131.143.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-285). ');
$ax += cidrblock($address, '131.200.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-286). ');
$ax += cidrblock($address, '132.255.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-287). ');
$ax += cidrblock($address, '134.18.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-288). ');
$ax += cidrblock($address, '134.22.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-289). ');
$ax += cidrblock($address, '134.33.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-290). ');
$ax += cidrblock($address, '134.127.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-291). ');
$ax += cidrblock($address, '134.172.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-292). ');
$ax += cidrblock($address, '136.230.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-293). ');
$ax += cidrblock($address, '137.19.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-294). ');
$ax += cidrblock($address, '137.31.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-295). ');
$ax += cidrblock($address, '137.33.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-296). ');
$ax += cidrblock($address, '137.55.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-297). ');
$ax += cidrblock($address, '137.72.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-298). ');
$ax += cidrblock($address, '137.76.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-299). ');
$ax += cidrblock($address, '137.105.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-300). ');
$ax += cidrblock($address, '137.114.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-301). ');
$ax += cidrblock($address, '137.171.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-302). ');
$ax += cidrblock($address, '137.218.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-303). ');
$ax += cidrblock($address, '138.31.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-304). ');
$ax += cidrblock($address, '138.36.92.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-305). ');
$ax += cidrblock($address, '138.36.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-306). ');
$ax += cidrblock($address, '138.52.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-307). ');
$ax += cidrblock($address, '138.59.4.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-308). ');
$ax += cidrblock($address, '138.59.204.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-309). ');
$ax += cidrblock($address, '138.94.120.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-310). ');
$ax += cidrblock($address, '138.94.144.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-311). ');
$ax += cidrblock($address, '138.94.216.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-312). ');
$ax += cidrblock($address, '138.97.156.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-313). ');
$ax += cidrblock($address, '138.122.192.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-314). ');
$ax += cidrblock($address, '138.125.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-315). ');
$ax += cidrblock($address, '138.185.116.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-316). ');
$ax += cidrblock($address, '138.186.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-317). ');
$ax += cidrblock($address, '138.216.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-318). ');
$ax += cidrblock($address, '138.219.172.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-319). ');
$ax += cidrblock($address, '138.228.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-320). ');
$ax += cidrblock($address, '138.249.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-321). ');
$ax += cidrblock($address, '139.44.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-322). ');
$ax += cidrblock($address, '139.81.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-323). ');
$ax += cidrblock($address, '139.188.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-324). ');
$ax += cidrblock($address, '140.167.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-325). ');
$ax += cidrblock($address, '141.98.0.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-326). ');
$ax += cidrblock($address, '141.136.22.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-327). ');
$ax += cidrblock($address, '141.136.27.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-328). ');
$ax += cidrblock($address, '141.178.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-329). ');
$ax += cidrblock($address, '141.253.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-330). ');
$ax += cidrblock($address, '142.102.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-331). ');
$ax += cidrblock($address, '143.0.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-332). ');
$ax += cidrblock($address, '143.49.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-333). ');
$ax += cidrblock($address, '143.135.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-334). ');
$ax += cidrblock($address, '143.136.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-335). ');
$ax += cidrblock($address, '143.253.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-336). ');
$ax += cidrblock($address, '145.231.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-337). ');
$ax += cidrblock($address, '146.3.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-338). ');
$ax += cidrblock($address, '146.51.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-339). ');
$ax += cidrblock($address, '146.183.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-340). ');
$ax += cidrblock($address, '146.202.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-341). ');
$ax += cidrblock($address, '146.252.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-342). ');
$ax += cidrblock($address, '147.7.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-343). ');
$ax += cidrblock($address, '147.16.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-344). ');
$ax += cidrblock($address, '147.78.100.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-345). ');
$ax += cidrblock($address, '147.119.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-346). ');
$ax += cidrblock($address, '148.148.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-347). ');
$ax += cidrblock($address, '148.154.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-348). ');
$ax += cidrblock($address, '148.178.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-349). ');
$ax += cidrblock($address, '148.185.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-350). ');
$ax += cidrblock($address, '148.248.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-351). ');
$ax += cidrblock($address, '149.118.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-352). ');
$ax += cidrblock($address, '149.143.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-353). ');
$ax += cidrblock($address, '149.207.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-354). ');
$ax += cidrblock($address, '150.10.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-355). ');
$ax += cidrblock($address, '150.22.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-356). ');
$ax += cidrblock($address, '150.25.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-357). ');
$ax += cidrblock($address, '150.40.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-358). ');
$ax += cidrblock($address, '150.107.106.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-359). ');
$ax += cidrblock($address, '150.121.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-360). ');
$ax += cidrblock($address, '150.129.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-361). ');
$ax += cidrblock($address, '150.129.212.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-362). ');
$ax += cidrblock($address, '150.129.228.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-363). ');
$ax += cidrblock($address, '150.141.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-364). ');
$ax += cidrblock($address, '150.242.100.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-365). ');
$ax += cidrblock($address, '150.242.120.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-366). ');
$ax += cidrblock($address, '150.242.144.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-367). ');
$ax += cidrblock($address, '151.212.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-368). ');
$ax += cidrblock($address, '152.109.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-369). ');
$ax += cidrblock($address, '152.147.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-370). ');
$ax += cidrblock($address, '153.14.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-371). ');
$ax += cidrblock($address, '153.52.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-372). ');
$ax += cidrblock($address, '153.85.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-373). ');
$ax += cidrblock($address, '153.93.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-374). ');
$ax += cidrblock($address, '154.12.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-375). ');
$ax += cidrblock($address, '155.11.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-376). ');
$ax += cidrblock($address, '155.40.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-377). ');
$ax += cidrblock($address, '155.66.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-378). ');
$ax += cidrblock($address, '155.71.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-379). ');
$ax += cidrblock($address, '155.73.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-380). ');
$ax += cidrblock($address, '155.94.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-381). ');
$ax += cidrblock($address, '155.94.96.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-382). ');
$ax += cidrblock($address, '155.108.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-383). ');
$ax += cidrblock($address, '155.159.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-384). ');
$ax += cidrblock($address, '155.204.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-385). ');
$ax += cidrblock($address, '155.235.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-386). ');
$ax += cidrblock($address, '155.249.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-387). ');
$ax += cidrblock($address, '156.96.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-388). ');
$ax += cidrblock($address, '157.115.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-389). ');
$ax += cidrblock($address, '157.162.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-390). ');
$ax += cidrblock($address, '157.186.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-391). ');
$ax += cidrblock($address, '157.195.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-392). ');
$ax += cidrblock($address, '158.54.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-393). ');
$ax += cidrblock($address, '158.90.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-394). ');
$ax += cidrblock($address, '158.249.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-395). ');
$ax += cidrblock($address, '159.80.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-396). ');
$ax += cidrblock($address, '159.85.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-397). ');
$ax += cidrblock($address, '159.151.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-398). ');
$ax += cidrblock($address, '159.174.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-399). ');
$ax += cidrblock($address, '159.219.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-400). ');
$ax += cidrblock($address, '159.223.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-401). ');
$ax += cidrblock($address, '159.229.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-402). ');
$ax += cidrblock($address, '160.14.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-403). ');
$ax += cidrblock($address, '160.21.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-404). ');
$ax += cidrblock($address, '160.115.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-405). ');
$ax += cidrblock($address, '160.116.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-406). ');
$ax += cidrblock($address, '160.121.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-407). ');
$ax += cidrblock($address, '160.122.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-408). ');
$ax += cidrblock($address, '160.180.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-409). ');
$ax += cidrblock($address, '160.184.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-410). ');
$ax += cidrblock($address, '160.188.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-411). ');
$ax += cidrblock($address, '160.200.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-412). ');
$ax += cidrblock($address, '160.235.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-413). ');
$ax += cidrblock($address, '160.240.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-414). ');
$ax += cidrblock($address, '160.255.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-415). ');
$ax += cidrblock($address, '161.0.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-416). ');
$ax += cidrblock($address, '161.0.68.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-417). ');
$ax += cidrblock($address, '161.1.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-418). ');
$ax += cidrblock($address, '161.66.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-419). ');
$ax += cidrblock($address, '162.208.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-420). ');
$ax += cidrblock($address, '162.212.188.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-421). ');
$ax += cidrblock($address, '162.213.232.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-422). ');
$ax += cidrblock($address, '162.216.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-423). ');
$ax += cidrblock($address, '162.216.152.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-424). ');
$ax += cidrblock($address, '162.222.128.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-425). ');
$ax += cidrblock($address, '162.249.121.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-426). ');
$ax += cidrblock($address, '163.47.19.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-427). ');
$ax += cidrblock($address, '163.50.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-428). ');
$ax += cidrblock($address, '163.53.247.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-429). ');
$ax += cidrblock($address, '163.59.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-430). ');
$ax += cidrblock($address, '163.127.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-431). ');
$ax += cidrblock($address, '163.128.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-432). ');
$ax += cidrblock($address, '163.197.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-433). ');
$ax += cidrblock($address, '163.198.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-434). ');
$ax += cidrblock($address, '163.216.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-435). ');
$ax += cidrblock($address, '163.250.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-436). ');
$ax += cidrblock($address, '163.254.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-437). ');
$ax += cidrblock($address, '164.6.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-438). ');
$ax += cidrblock($address, '164.40.188.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-439). ');
$ax += cidrblock($address, '164.79.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-440). ');
$ax += cidrblock($address, '164.88.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-441). ');
$ax += cidrblock($address, '164.137.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-442). ');
$ax += cidrblock($address, '164.155.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-443). ');
$ax += cidrblock($address, '165.3.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-444). ');
$ax += cidrblock($address, '165.52.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-445). ');
$ax += cidrblock($address, '165.102.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-446). ');
$ax += cidrblock($address, '165.205.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-447). ');
$ax += cidrblock($address, '165.209.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-448). ');
$ax += cidrblock($address, '166.117.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-449). ');
$ax += cidrblock($address, '167.74.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-450). ');
$ax += cidrblock($address, '167.97.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-451). ');
$ax += cidrblock($address, '167.103.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-452). ');
$ax += cidrblock($address, '167.158.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-453). ');
$ax += cidrblock($address, '167.160.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-454). ');
$ax += cidrblock($address, '167.162.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-455). ');
$ax += cidrblock($address, '167.175.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-456). ');
$ax += cidrblock($address, '167.224.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-457). ');
$ax += cidrblock($address, '167.249.200.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-458). ');
$ax += cidrblock($address, '168.0.212.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-459). ');
$ax += cidrblock($address, '168.64.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-460). ');
$ax += cidrblock($address, '168.80.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-461). ');
$ax += cidrblock($address, '168.90.96.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-462). ');
$ax += cidrblock($address, '168.90.108.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-463). ');
$ax += cidrblock($address, '168.129.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-464). ');
$ax += cidrblock($address, '168.151.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-465). ');
$ax += cidrblock($address, '168.151.4.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-466). ');
$ax += cidrblock($address, '168.151.6.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-467). ');
$ax += cidrblock($address, '168.181.52.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-468). ');
$ax += cidrblock($address, '168.195.76.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-469). ');
$ax += cidrblock($address, '168.196.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-470). ');
$ax += cidrblock($address, '168.196.240.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-471). ');
$ax += cidrblock($address, '168.198.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-472). ');
$ax += cidrblock($address, '168.205.72.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-473). ');
$ax += cidrblock($address, '168.206.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-474). ');
$ax += cidrblock($address, '168.211.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-475). ');
$ax += cidrblock($address, '168.227.128.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-476). ');
$ax += cidrblock($address, '168.227.140.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-477). ');
$ax += cidrblock($address, '170.67.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-478). ');
$ax += cidrblock($address, '170.83.232.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-479). ');
$ax += cidrblock($address, '170.113.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-480). ');
$ax += cidrblock($address, '170.114.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-481). ');
$ax += cidrblock($address, '170.120.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-482). ');
$ax += cidrblock($address, '170.179.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-483). ');
$ax += cidrblock($address, '170.244.40.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-484). ');
$ax += cidrblock($address, '170.244.240.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-485). ');
$ax += cidrblock($address, '170.245.40.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-486). ');
$ax += cidrblock($address, '170.247.220.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-487). ');
$ax += cidrblock($address, '171.22.16.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-488). ');
$ax += cidrblock($address, '171.22.28.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-489). ');
$ax += cidrblock($address, '171.25.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-490). ');
$ax += cidrblock($address, '171.25.212.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-491). ');
$ax += cidrblock($address, '171.26.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-492). ');
$ax += cidrblock($address, '172.98.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-493). ');
$ax += cidrblock($address, '174.136.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-494). ');
$ax += cidrblock($address, '175.103.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-495). ');
$ax += cidrblock($address, '176.56.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-496). ');
$ax += cidrblock($address, '176.97.116.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-497). ');
$ax += cidrblock($address, '176.119.4.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-498). ');
$ax += cidrblock($address, '176.119.7.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-499). ');
$ax += cidrblock($address, '176.125.252.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-500). ');
$ax += cidrblock($address, '177.36.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-501). ');
$ax += cidrblock($address, '177.74.160.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-502). ');
$ax += cidrblock($address, '177.91.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-503). ');
$ax += cidrblock($address, '177.234.136.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-504). ');
$ax += cidrblock($address, '178.16.80.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-505). ');
$ax += cidrblock($address, '178.57.65.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-506). ');
$ax += cidrblock($address, '178.57.66.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-507). ');
$ax += cidrblock($address, '178.57.68.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-508). ');
$ax += cidrblock($address, '178.159.36.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-509). ');
$ax += cidrblock($address, '178.159.97.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-510). ');
$ax += cidrblock($address, '178.159.100.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-511). ');
$ax += cidrblock($address, '178.159.107.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-512). ');
$ax += cidrblock($address, '178.215.224.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-513). ');
$ax += cidrblock($address, '178.215.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-514). ');
$ax += cidrblock($address, '179.63.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-515). ');
$ax += cidrblock($address, '180.178.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-516). ');
$ax += cidrblock($address, '180.236.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-517). ');
$ax += cidrblock($address, '181.177.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-518). ');
$ax += cidrblock($address, '184.175.192.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-519). ');
$ax += cidrblock($address, '185.0.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-520). ');
$ax += cidrblock($address, '185.14.192.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-521). ');
$ax += cidrblock($address, '185.14.195.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-522). ');
$ax += cidrblock($address, '185.17.96.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-523). ');
$ax += cidrblock($address, '185.30.168.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-524). ');
$ax += cidrblock($address, '185.35.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-525). ');
$ax += cidrblock($address, '185.50.250.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-526). ');
$ax += cidrblock($address, '185.53.88.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-527). ');
$ax += cidrblock($address, '185.64.20.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-528). ');
$ax += cidrblock($address, '185.68.156.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-529). ');
$ax += cidrblock($address, '185.71.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-530). ');
$ax += cidrblock($address, '185.72.68.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-531). ');
$ax += cidrblock($address, '185.84.183.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-532). ');
$ax += cidrblock($address, '185.93.187.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-533). ');
$ax += cidrblock($address, '185.101.68.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-534). ');
$ax += cidrblock($address, '185.101.71.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-535). ');
$ax += cidrblock($address, '185.103.72.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-536). ');
$ax += cidrblock($address, '185.103.252.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-537). ');
$ax += cidrblock($address, '185.105.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-538). ');
$ax += cidrblock($address, '185.106.92.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-539). ');
$ax += cidrblock($address, '185.106.94.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-540). ');
$ax += cidrblock($address, '185.110.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-541). ');
$ax += cidrblock($address, '185.112.102.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-542). ');
$ax += cidrblock($address, '185.116.172.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-543). ');
$ax += cidrblock($address, '185.116.175.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-544). ');
$ax += cidrblock($address, '185.122.128.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-545). ');
$ax += cidrblock($address, '185.123.144.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-546). ');
$ax += cidrblock($address, '185.123.248.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-547). ');
$ax += cidrblock($address, '185.124.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-548). ');
$ax += cidrblock($address, '185.124.56.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-549). ');
$ax += cidrblock($address, '185.126.136.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-550). ');
$ax += cidrblock($address, '185.126.148.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-551). ');
$ax += cidrblock($address, '185.126.160.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-552). ');
$ax += cidrblock($address, '185.126.224.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-553). ');
$ax += cidrblock($address, '185.126.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-554). ');
$ax += cidrblock($address, '185.126.248.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-555). ');
$ax += cidrblock($address, '185.127.44.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-556). ');
$ax += cidrblock($address, '185.127.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-557). ');
$ax += cidrblock($address, '185.127.92.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-558). ');
$ax += cidrblock($address, '185.129.8.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-559). ');
$ax += cidrblock($address, '185.129.148.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-560). ');
$ax += cidrblock($address, '185.129.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-561). ');
$ax += cidrblock($address, '185.130.36.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-562). ');
$ax += cidrblock($address, '185.130.40.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-563). ');
$ax += cidrblock($address, '185.132.8.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-564). ');
$ax += cidrblock($address, '185.135.140.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-565). ');
$ax += cidrblock($address, '185.137.219.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-566). ');
$ax += cidrblock($address, '185.140.108.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-567). ');
$ax += cidrblock($address, '185.143.220.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-568). ');
$ax += cidrblock($address, '185.147.140.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-569). ');
$ax += cidrblock($address, '185.156.88.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-570). ');
$ax += cidrblock($address, '185.159.68.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-571). ');
$ax += cidrblock($address, '185.165.24.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-572). ');
$ax += cidrblock($address, '185.165.153.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-573). ');
$ax += cidrblock($address, '185.166.68.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-574). ');
$ax += cidrblock($address, '185.167.116.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-575). ');
$ax += cidrblock($address, '185.171.148.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-576). ');
$ax += cidrblock($address, '185.175.140.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-577). ');
$ax += cidrblock($address, '185.176.26.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-578). ');
$ax += cidrblock($address, '185.178.164.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-579). ');
$ax += cidrblock($address, '185.184.192.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-580). ');
$ax += cidrblock($address, '185.185.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-581). ');
$ax += cidrblock($address, '185.187.236.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-582). ');
$ax += cidrblock($address, '185.193.141.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-583). ');
$ax += cidrblock($address, '185.194.100.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-584). ');
$ax += cidrblock($address, '185.195.188.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-585). ');
$ax += cidrblock($address, '185.196.96.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-586). ');
$ax += cidrblock($address, '185.199.240.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-587). ');
$ax += cidrblock($address, '185.203.64.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-588). ');
$ax += cidrblock($address, '185.205.180.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-589). ');
$ax += cidrblock($address, '185.208.152.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-590). ');
$ax += cidrblock($address, '185.212.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-591). ');
$ax += cidrblock($address, '185.212.244.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-592). ');
$ax += cidrblock($address, '185.213.176.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-593). ');
$ax += cidrblock($address, '185.215.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-594). ');
$ax += cidrblock($address, '185.222.211.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-595). ');
$ax += cidrblock($address, '185.223.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-596). ');
$ax += cidrblock($address, '185.223.160.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-597). ');
$ax += cidrblock($address, '185.223.244.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-598). ');
$ax += cidrblock($address, '185.227.200.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-599). ');
$ax += cidrblock($address, '185.237.60.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-600). ');
$ax += cidrblock($address, '185.239.24.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-601). ');
$ax += cidrblock($address, '185.239.32.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-602). ');
$ax += cidrblock($address, '185.241.192.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-603). ');
$ax += cidrblock($address, '185.242.120.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-604). ');
$ax += cidrblock($address, '185.244.29.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-605). ');
$ax += cidrblock($address, '185.244.31.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-606). ');
$ax += cidrblock($address, '185.245.112.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-607). ');
$ax += cidrblock($address, '185.246.220.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-608). ');
$ax += cidrblock($address, '185.247.172.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-609). ');
$ax += cidrblock($address, '185.248.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-610). ');
$ax += cidrblock($address, '185.252.160.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-611). ');
$ax += cidrblock($address, '185.252.176.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-612). ');
$ax += cidrblock($address, '186.65.112.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-613). ');
$ax += cidrblock($address, '186.179.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-614). ');
$ax += cidrblock($address, '188.68.0.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-615). ');
$ax += cidrblock($address, '188.68.3.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-616). ');
$ax += cidrblock($address, '188.172.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-617). ');
$ax += cidrblock($address, '188.208.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-618). ');
$ax += cidrblock($address, '188.208.109.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-619). ');
$ax += cidrblock($address, '188.213.248.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-620). ');
$ax += cidrblock($address, '188.214.94.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-621). ');
$ax += cidrblock($address, '188.247.135.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-622). ');
$ax += cidrblock($address, '188.247.230.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-623). ');
$ax += cidrblock($address, '188.247.232.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-624). ');
$ax += cidrblock($address, '190.123.208.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-625). ');
$ax += cidrblock($address, '190.185.108.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-626). ');
$ax += cidrblock($address, '191.101.167.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-627). ');
$ax += cidrblock($address, '192.5.103.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-628). ');
$ax += cidrblock($address, '192.12.131.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-629). ');
$ax += cidrblock($address, '192.22.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-630). ');
$ax += cidrblock($address, '192.26.25.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-631). ');
$ax += cidrblock($address, '192.31.212.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-632). ');
$ax += cidrblock($address, '192.40.29.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-633). ');
$ax += cidrblock($address, '192.43.154.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-634). ');
$ax += cidrblock($address, '192.43.160.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-635). ');
$ax += cidrblock($address, '192.43.175.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-636). ');
$ax += cidrblock($address, '192.43.176.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-637). ');
$ax += cidrblock($address, '192.43.184.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-638). ');
$ax += cidrblock($address, '192.46.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-639). ');
$ax += cidrblock($address, '192.54.110.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-640). ');
$ax += cidrblock($address, '192.67.16.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-641). ');
$ax += cidrblock($address, '192.88.74.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-642). ');
$ax += cidrblock($address, '192.96.146.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-643). ');
$ax += cidrblock($address, '192.100.142.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-644). ');
$ax += cidrblock($address, '192.101.44.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-645). ');
$ax += cidrblock($address, '192.101.181.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-646). ');
$ax += cidrblock($address, '192.101.200.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-647). ');
$ax += cidrblock($address, '192.101.240.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-648). ');
$ax += cidrblock($address, '192.101.248.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-649). ');
$ax += cidrblock($address, '192.133.3.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-650). ');
$ax += cidrblock($address, '192.135.255.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-651). ');
$ax += cidrblock($address, '192.145.28.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-652). ');
$ax += cidrblock($address, '192.145.52.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-653). ');
$ax += cidrblock($address, '192.152.194.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-654). ');
$ax += cidrblock($address, '192.154.11.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-655). ');
$ax += cidrblock($address, '192.158.51.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-656). ');
$ax += cidrblock($address, '192.160.44.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-657). ');
$ax += cidrblock($address, '192.161.80.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-658). ');
$ax += cidrblock($address, '192.190.49.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-659). ');
$ax += cidrblock($address, '192.190.97.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-660). ');
$ax += cidrblock($address, '192.195.150.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-661). ');
$ax += cidrblock($address, '192.197.87.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-662). ');
$ax += cidrblock($address, '192.203.252.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-663). ');
$ax += cidrblock($address, '192.206.114.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-664). ');
$ax += cidrblock($address, '192.219.120.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-665). ');
$ax += cidrblock($address, '192.219.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-666). ');
$ax += cidrblock($address, '192.219.192.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-667). ');
$ax += cidrblock($address, '192.219.208.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-668). ');
$ax += cidrblock($address, '192.226.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-669). ');
$ax += cidrblock($address, '192.229.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-670). ');
$ax += cidrblock($address, '192.231.66.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-671). ');
$ax += cidrblock($address, '192.234.189.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-672). ');
$ax += cidrblock($address, '192.245.101.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-673). ');
$ax += cidrblock($address, '192.251.231.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-674). ');
$ax += cidrblock($address, '193.8.184.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-675). ');
$ax += cidrblock($address, '193.9.158.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-676). ');
$ax += cidrblock($address, '193.25.48.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-677). ');
$ax += cidrblock($address, '193.25.216.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-678). ');
$ax += cidrblock($address, '193.32.163.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-679). ');
$ax += cidrblock($address, '193.32.208.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-680). ');
$ax += cidrblock($address, '193.35.16.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-681). ');
$ax += cidrblock($address, '193.37.40.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-682). ');
$ax += cidrblock($address, '193.46.172.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-683). ');
$ax += cidrblock($address, '193.47.60.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-684). ');
$ax += cidrblock($address, '193.58.120.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-685). ');
$ax += cidrblock($address, '193.84.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-686). ');
$ax += cidrblock($address, '193.105.171.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-687). ');
$ax += cidrblock($address, '193.109.108.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-688). ');
$ax += cidrblock($address, '193.139.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-689). ');
$ax += cidrblock($address, '193.148.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-690). ');
$ax += cidrblock($address, '193.148.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-691). ');
$ax += cidrblock($address, '193.148.92.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-692). ');
$ax += cidrblock($address, '193.168.196.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-693). ');
$ax += cidrblock($address, '193.168.216.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-694). ');
$ax += cidrblock($address, '193.187.96.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-695). ');
$ax += cidrblock($address, '193.222.96.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-696). ');
$ax += cidrblock($address, '193.243.0.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-697). ');
$ax += cidrblock($address, '194.1.152.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-698). ');
$ax += cidrblock($address, '194.5.97.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-699). ');
$ax += cidrblock($address, '194.5.98.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-700). ');
$ax += cidrblock($address, '194.11.196.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-701). ');
$ax += cidrblock($address, '194.15.32.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-702). ');
$ax += cidrblock($address, '194.15.44.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-703). ');
$ax += cidrblock($address, '194.48.248.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-704). ');
$ax += cidrblock($address, '194.55.184.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-705). ');
$ax += cidrblock($address, '194.55.224.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-706). ');
$ax += cidrblock($address, '194.59.28.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-707). ');
$ax += cidrblock($address, '194.113.36.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-708). ');
$ax += cidrblock($address, '194.169.172.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-709). ');
$ax += cidrblock($address, '194.180.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-710). ');
$ax += cidrblock($address, '195.182.57.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-711). ');
$ax += cidrblock($address, '195.191.102.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-712). ');
$ax += cidrblock($address, '195.210.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-713). ');
$ax += cidrblock($address, '196.1.109.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-714). ');
$ax += cidrblock($address, '196.10.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-715). ');
$ax += cidrblock($address, '196.15.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-716). ');
$ax += cidrblock($address, '196.16.0.0/14', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-717). ');
$ax += cidrblock($address, '196.42.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-718). ');
$ax += cidrblock($address, '196.45.120.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-719). ');
$ax += cidrblock($address, '196.62.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-720). ');
$ax += cidrblock($address, '196.192.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-721). ');
$ax += cidrblock($address, '196.193.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-722). ');
$ax += cidrblock($address, '196.194.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-723). ');
$ax += cidrblock($address, '196.196.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-724). ');
$ax += cidrblock($address, '196.199.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-725). ');
$ax += cidrblock($address, '196.207.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-726). ');
$ax += cidrblock($address, '196.246.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-727). ');
$ax += cidrblock($address, '197.154.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-728). ');
$ax += cidrblock($address, '197.159.80.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-729). ');
$ax += cidrblock($address, '198.13.0.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-730). ');
$ax += cidrblock($address, '198.20.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-731). ');
$ax += cidrblock($address, '198.45.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-732). ');
$ax += cidrblock($address, '198.45.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-733). ');
$ax += cidrblock($address, '198.54.232.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-734). ');
$ax += cidrblock($address, '198.56.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-735). ');
$ax += cidrblock($address, '198.57.64.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-736). ');
$ax += cidrblock($address, '198.62.70.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-737). ');
$ax += cidrblock($address, '198.62.76.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-738). ');
$ax += cidrblock($address, '198.96.224.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-739). ');
$ax += cidrblock($address, '198.99.117.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-740). ');
$ax += cidrblock($address, '198.102.222.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-741). ');
$ax += cidrblock($address, '198.148.212.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-742). ');
$ax += cidrblock($address, '198.151.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-743). ');
$ax += cidrblock($address, '198.151.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-744). ');
$ax += cidrblock($address, '198.151.152.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-745). ');
$ax += cidrblock($address, '198.160.205.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-746). ');
$ax += cidrblock($address, '198.169.201.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-747). ');
$ax += cidrblock($address, '198.177.175.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-748). ');
$ax += cidrblock($address, '198.177.176.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-749). ');
$ax += cidrblock($address, '198.177.180.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-750). ');
$ax += cidrblock($address, '198.177.214.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-751). ');
$ax += cidrblock($address, '198.178.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-752). ');
$ax += cidrblock($address, '198.179.22.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-753). ');
$ax += cidrblock($address, '198.181.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-754). ');
$ax += cidrblock($address, '198.181.96.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-755). ');
$ax += cidrblock($address, '198.183.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-756). ');
$ax += cidrblock($address, '198.184.193.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-757). ');
$ax += cidrblock($address, '198.184.208.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-758). ');
$ax += cidrblock($address, '198.186.25.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-759). ');
$ax += cidrblock($address, '198.186.208.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-760). ');
$ax += cidrblock($address, '198.187.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-761). ');
$ax += cidrblock($address, '198.187.192.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-762). ');
$ax += cidrblock($address, '198.190.173.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-763). ');
$ax += cidrblock($address, '198.199.212.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-764). ');
$ax += cidrblock($address, '198.200.0.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-765). ');
$ax += cidrblock($address, '198.200.8.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-766). ');
$ax += cidrblock($address, '198.202.237.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-767). ');
$ax += cidrblock($address, '198.204.0.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-768). ');
$ax += cidrblock($address, '198.206.140.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-769). ');
$ax += cidrblock($address, '198.212.132.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-770). ');
$ax += cidrblock($address, '199.5.152.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-771). ');
$ax += cidrblock($address, '199.5.229.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-772). ');
$ax += cidrblock($address, '199.26.137.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-773). ');
$ax += cidrblock($address, '199.26.207.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-774). ');
$ax += cidrblock($address, '199.26.251.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-775). ');
$ax += cidrblock($address, '199.33.222.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-776). ');
$ax += cidrblock($address, '199.34.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-777). ');
$ax += cidrblock($address, '199.46.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-778). ');
$ax += cidrblock($address, '199.48.160.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-779). ');
$ax += cidrblock($address, '199.60.102.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-780). ');
$ax += cidrblock($address, '199.71.192.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-781). ');
$ax += cidrblock($address, '199.84.55.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-782). ');
$ax += cidrblock($address, '199.84.56.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-783). ');
$ax += cidrblock($address, '199.84.60.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-784). ');
$ax += cidrblock($address, '199.84.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-785). ');
$ax += cidrblock($address, '199.88.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-786). ');
$ax += cidrblock($address, '199.88.48.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-787). ');
$ax += cidrblock($address, '199.89.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-788). ');
$ax += cidrblock($address, '199.89.198.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-789). ');
$ax += cidrblock($address, '199.120.163.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-790). ');
$ax += cidrblock($address, '199.165.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-791). ');
$ax += cidrblock($address, '199.166.200.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-792). ');
$ax += cidrblock($address, '199.184.82.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-793). ');
$ax += cidrblock($address, '199.185.192.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-794). ');
$ax += cidrblock($address, '199.196.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-795). ');
$ax += cidrblock($address, '199.198.160.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-796). ');
$ax += cidrblock($address, '199.198.176.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-797). ');
$ax += cidrblock($address, '199.198.184.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-798). ');
$ax += cidrblock($address, '199.198.188.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-799). ');
$ax += cidrblock($address, '199.200.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-800). ');
$ax += cidrblock($address, '199.212.96.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-801). ');
$ax += cidrblock($address, '199.223.0.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-802). ');
$ax += cidrblock($address, '199.230.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-803). ');
$ax += cidrblock($address, '199.230.96.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-804). ');
$ax += cidrblock($address, '199.233.85.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-805). ');
$ax += cidrblock($address, '199.233.96.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-806). ');
$ax += cidrblock($address, '199.241.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-807). ');
$ax += cidrblock($address, '199.244.56.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-808). ');
$ax += cidrblock($address, '199.245.138.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-809). ');
$ax += cidrblock($address, '199.246.137.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-810). ');
$ax += cidrblock($address, '199.246.213.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-811). ');
$ax += cidrblock($address, '199.246.215.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-812). ');
$ax += cidrblock($address, '199.248.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-813). ');
$ax += cidrblock($address, '199.249.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-814). ');
$ax += cidrblock($address, '199.253.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-815). ');
$ax += cidrblock($address, '199.253.48.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-816). ');
$ax += cidrblock($address, '199.253.224.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-817). ');
$ax += cidrblock($address, '199.254.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-818). ');
$ax += cidrblock($address, '200.0.60.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-819). ');
$ax += cidrblock($address, '200.22.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-820). ');
$ax += cidrblock($address, '200.71.124.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-821). ');
$ax += cidrblock($address, '200.189.44.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-822). ');
$ax += cidrblock($address, '200.234.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-823). ');
$ax += cidrblock($address, '201.148.168.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-824). ');
$ax += cidrblock($address, '201.169.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-825). ');
$ax += cidrblock($address, '202.0.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-826). ');
$ax += cidrblock($address, '202.20.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-827). ');
$ax += cidrblock($address, '202.21.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-828). ');
$ax += cidrblock($address, '202.27.96.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-829). ');
$ax += cidrblock($address, '202.27.120.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-830). ');
$ax += cidrblock($address, '202.27.161.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-831). ');
$ax += cidrblock($address, '202.27.162.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-832). ');
$ax += cidrblock($address, '202.27.164.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-833). ');
$ax += cidrblock($address, '202.27.168.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-834). ');
$ax += cidrblock($address, '202.39.112.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-835). ');
$ax += cidrblock($address, '202.40.32.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-836). ');
$ax += cidrblock($address, '202.40.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-837). ');
$ax += cidrblock($address, '202.68.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-838). ');
$ax += cidrblock($address, '202.86.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-839). ');
$ax += cidrblock($address, '202.148.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-840). ');
$ax += cidrblock($address, '202.148.176.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-841). ');
$ax += cidrblock($address, '202.183.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-842). ');
$ax += cidrblock($address, '202.189.80.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-843). ');
$ax += cidrblock($address, '203.2.200.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-844). ');
$ax += cidrblock($address, '203.9.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-845). ');
$ax += cidrblock($address, '203.31.88.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-846). ');
$ax += cidrblock($address, '203.34.70.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-847). ');
$ax += cidrblock($address, '203.34.252.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-848). ');
$ax += cidrblock($address, '203.86.252.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-849). ');
$ax += cidrblock($address, '203.156.196.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-850). ');
$ax += cidrblock($address, '203.156.218.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-851). ');
$ax += cidrblock($address, '203.169.0.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-852). ');
$ax += cidrblock($address, '203.191.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-853). ');
$ax += cidrblock($address, '203.195.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-854). ');
$ax += cidrblock($address, '204.2.189.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-855). ');
$ax += cidrblock($address, '204.19.38.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-856). ');
$ax += cidrblock($address, '204.44.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-857). ');
$ax += cidrblock($address, '204.44.224.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-858). ');
$ax += cidrblock($address, '204.52.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-859). ');
$ax += cidrblock($address, '204.52.255.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-860). ');
$ax += cidrblock($address, '204.57.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-861). ');
$ax += cidrblock($address, '204.75.147.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-862). ');
$ax += cidrblock($address, '204.75.228.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-863). ');
$ax += cidrblock($address, '204.80.198.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-864). ');
$ax += cidrblock($address, '204.86.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-865). ');
$ax += cidrblock($address, '204.87.199.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-866). ');
$ax += cidrblock($address, '204.89.224.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-867). ');
$ax += cidrblock($address, '204.106.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-868). ');
$ax += cidrblock($address, '204.106.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-869). ');
$ax += cidrblock($address, '204.107.208.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-870). ');
$ax += cidrblock($address, '204.126.244.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-871). ');
$ax += cidrblock($address, '204.128.151.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-872). ');
$ax += cidrblock($address, '204.128.180.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-873). ');
$ax += cidrblock($address, '204.130.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-874). ');
$ax += cidrblock($address, '204.130.167.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-875). ');
$ax += cidrblock($address, '204.147.64.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-876). ');
$ax += cidrblock($address, '204.194.64.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-877). ');
$ax += cidrblock($address, '204.225.16.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-878). ');
$ax += cidrblock($address, '204.225.159.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-879). ');
$ax += cidrblock($address, '204.225.210.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-880). ');
$ax += cidrblock($address, '204.232.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-881). ');
$ax += cidrblock($address, '204.238.137.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-882). ');
$ax += cidrblock($address, '204.238.170.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-883). ');
$ax += cidrblock($address, '204.238.183.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-884). ');
$ax += cidrblock($address, '205.137.0.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-885). ');
$ax += cidrblock($address, '205.142.104.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-886). ');
$ax += cidrblock($address, '205.144.0.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-887). ');
$ax += cidrblock($address, '205.144.176.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-888). ');
$ax += cidrblock($address, '205.148.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-889). ');
$ax += cidrblock($address, '205.151.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-890). ');
$ax += cidrblock($address, '205.159.45.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-891). ');
$ax += cidrblock($address, '205.159.174.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-892). ');
$ax += cidrblock($address, '205.159.180.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-893). ');
$ax += cidrblock($address, '205.166.77.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-894). ');
$ax += cidrblock($address, '205.166.84.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-895). ');
$ax += cidrblock($address, '205.166.130.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-896). ');
$ax += cidrblock($address, '205.166.168.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-897). ');
$ax += cidrblock($address, '205.166.211.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-898). ');
$ax += cidrblock($address, '205.172.176.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-899). ');
$ax += cidrblock($address, '205.172.244.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-900). ');
$ax += cidrblock($address, '205.175.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-901). ');
$ax += cidrblock($address, '205.189.71.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-902). ');
$ax += cidrblock($address, '205.189.72.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-903). ');
$ax += cidrblock($address, '205.203.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-904). ');
$ax += cidrblock($address, '205.203.224.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-905). ');
$ax += cidrblock($address, '205.207.134.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-906). ');
$ax += cidrblock($address, '205.210.107.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-907). ');
$ax += cidrblock($address, '205.210.139.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-908). ');
$ax += cidrblock($address, '205.210.171.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-909). ');
$ax += cidrblock($address, '205.210.172.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-910). ');
$ax += cidrblock($address, '205.214.96.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-911). ');
$ax += cidrblock($address, '205.214.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-912). ');
$ax += cidrblock($address, '205.233.224.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-913). ');
$ax += cidrblock($address, '205.236.185.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-914). ');
$ax += cidrblock($address, '205.236.189.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-915). ');
$ax += cidrblock($address, '205.237.88.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-916). ');
$ax += cidrblock($address, '206.41.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-917). ');
$ax += cidrblock($address, '206.51.29.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-918). ');
$ax += cidrblock($address, '206.124.104.0/21', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-919). ');
$ax += cidrblock($address, '206.130.188.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-920). ');
$ax += cidrblock($address, '206.143.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-921). ');
$ax += cidrblock($address, '206.197.28.0/23', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-922). ');
$ax += cidrblock($address, '206.197.77.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-923). ');
$ax += cidrblock($address, '206.197.165.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-924). ');
$ax += cidrblock($address, '206.209.80.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-925). ');
$ax += cidrblock($address, '206.224.160.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-926). ');
$ax += cidrblock($address, '206.226.0.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-927). ');
$ax += cidrblock($address, '206.227.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-928). ');
$ax += cidrblock($address, '207.22.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-929). ');
$ax += cidrblock($address, '207.32.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-930). ');
$ax += cidrblock($address, '207.45.224.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-931). ');
$ax += cidrblock($address, '207.110.64.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-932). ');
$ax += cidrblock($address, '207.110.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-933). ');
$ax += cidrblock($address, '207.183.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-934). ');
$ax += cidrblock($address, '208.12.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-935). ');
$ax += cidrblock($address, '208.84.132.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-936). ');
$ax += cidrblock($address, '208.93.4.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-937). ');
$ax += cidrblock($address, '209.51.32.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-938). ');
$ax += cidrblock($address, '209.66.128.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-939). ');
$ax += cidrblock($address, '209.95.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-940). ');
$ax += cidrblock($address, '209.99.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-941). ');
$ax += cidrblock($address, '209.145.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-942). ');
$ax += cidrblock($address, '209.182.64.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-943). ');
$ax += cidrblock($address, '209.242.192.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-944). ');
$ax += cidrblock($address, '210.57.128.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-945). ');
$ax += cidrblock($address, '210.57.192.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-946). ');
$ax += cidrblock($address, '212.87.204.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-947). ');
$ax += cidrblock($address, '212.87.220.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-948). ');
$ax += cidrblock($address, '212.95.144.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-949). ');
$ax += cidrblock($address, '212.146.180.0/24', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-950). ');
$ax += cidrblock($address, '213.130.88.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-951). ');
$ax += cidrblock($address, '213.176.20.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-952). ');
$ax += cidrblock($address, '213.247.0.0/19', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-953). ');
$ax += cidrblock($address, '216.83.208.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-954). ');
$ax += cidrblock($address, '216.137.176.0/20', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-955). ');
$ax += cidrblock($address, '216.179.128.0/17', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-956). ');
$ax += cidrblock($address, '217.197.168.0/22', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-957). ');
$ax += cidrblock($address, '220.154.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-958). ');
$ax += cidrblock($address, '221.132.192.0/18', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-959). ');
$ax += cidrblock($address, '223.0.0.0/15', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-960). ');
$ax += cidrblock($address, '223.169.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-961). ');
$ax += cidrblock($address, '223.173.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-962). ');
$ax += cidrblock($address, '223.254.0.0/16', 'Spamhaus DROP/EDROP (IP4X-SPAMHAUSDROPEDROP-963). ');


// Split from SFS toxic CIDRs to separate sections for stronger capturing.
// Duplicates, bogons, etc removed.
// Refer stopforumspam.com/downloads/toxic_ip_cidr.txt

// "Beliefnet". Updated: 2019.10.23
$ax += cidrblock($address, '174.76.30.0/24', 'Beliefnet (IP4X-BELIEFNET-0). ');
$ax += cidrblock($address, '174.77.145.0/24', 'Beliefnet (IP4X-BELIEFNET-1). ');


// Octopusnet VPN (mostly from AS44724, but we'll update via announces instead,
// because we don't need to block the entire ASN, and there could be stray CIDRs
// too). Proxy service with a history of spam events.
// Updated: 2019.12.14

$ax += cidrblock($address, '46.46.56.0/21', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-0). ');
$ax += cidrblock($address, '83.217.28.0/22', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-1). ');
$ax += cidrblock($address, '95.154.64.0/19', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-2). ');
$ax += cidrblock($address, '95.154.96.0/20', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-3). ');
$ax += cidrblock($address, '95.154.112.0/22', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-4). ');
$ax += cidrblock($address, '95.154.116.0/23', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-5). ');
$ax += cidrblock($address, '95.154.120.0/21', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-6). ');
$ax += cidrblock($address, '185.57.28.0/22', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-7). ');
$ax += cidrblock($address, '213.5.16.0/22', 'Octopusnet VPN (IP4X-OCTOPUSNETVPN-8). ');


// ASN 208323 ("Foundation for Applied Privacy").
// A *huge* source of spam! Went from zero reports at SFS to 38,300+ reports in
// the course of less than three months; Should be cautious about removal, even
// if the reports subside in the future.
// Updated: 2019.10.02 / Checked: 2020.01.15

$ax += cidrblock($address, '109.70.100.0/24', 'Applied Privacy (IP4X-APPLIEDPRIVACY-0). ');

// IP4X Test Trigger
$ax += inmatch($query, 'xip4xx', 'IP4X Test Trigger. ');

// EoF
