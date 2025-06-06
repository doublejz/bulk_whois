<div dir="ltr">
A shell script that uses the whois package to perform a whois on numbous IPs.  The input file should be a list of IP addresses, one per line.  The whois query results will be displayed on screen, so be sure that your window scroll back allows at least the number of IPs that you are resolving. The whois command will try to output the Org Name first. However, if the Org Name isn't available, it will retrieve the Net Name field of the whois.
<br> <br>
  
**Dependencies:** <br>
whois

apt install whois<br>
yum install whois<br>

**Usage:**<br>
$ ./bulk-whois.sh
<br><br>
**Example:**<br>
$ ./bulk-whois.sh <file to read IPs from>

**Results:**<br>
The output will be * (astrisk) delimited so that you can easily parse the output without worrying about additonal commas.<br><br>
$ ./bulk_whois.sh ips.txt<br>
IP Address, Org Name<br>
100.20.93.113*Amazon.com, Inc.<br>
100.26.62.244*Amazon.com, Inc.<br>
104.102.249.11*Akamai Technologies, Inc.<br>
96.17.78.8*Akamai Technologies, Inc.<br>
98.80.229.246*Amazon.com, Inc.<br>
98.82.157.137*Amazon.com, Inc.<br>
$
