#### CIDRAM IPv4 signature files adapted for ZB Block.

License: GNU/GPL v2+.

Directory contains:
- "build.php": A quick and dirty tool for adapting the CIDRAM IPv4 signature files for use with ZB Block (this tool requires PHP >= 5.5.0 to run).
- "ip4.sig": The file generated from the CIDRAM IPv4 signature files to be used with ZB Block.
- "zbip4head.php": Required by "build.php" (used as a header for the file generated).
- "zbip4foot.php": Required by "build.php" (used as a footer for the file generated; contains bypasses, special rules, etc).
