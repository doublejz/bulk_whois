A shell script that uses the whois package to perform a whois on numbous IPs.  The input file should be a list of IP addresses, one per line.  The whois query results will be displayed on screen, so be sure that your window scroll back allows at least the number of IPs that you are resolving. The whois command will try to output the Org Name first. However, if the Org Name isn't available, it will retrieve the Net Name field of the whois.

Dependencies:
whois

apt install whois
yum install whois

Usage:

$ ./bulk-whois.sh

Example:
$ ./bulk-whois.sh <file to read IPs from>

The output will be * delimited so that you can easily parse the output without worrying about additonal commans.
$ ./bulk_whois.sh ips.txt
dos2unix: converting file ips.txt to Unix format...
IP Address, Org Name
100.20.93.113*Amazon.com, Inc.
100.26.62.244*Amazon.com, Inc.
104.102.249.11*Akamai Technologies, Inc.
96.17.78.8*Akamai Technologies, Inc.
98.80.229.246*Amazon.com, Inc.
98.82.157.137*Amazon.com, Inc.
$
