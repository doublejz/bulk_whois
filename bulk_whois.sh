#!/bin/bash
# Bulk Whois Lookup
# Generates CSV output of Whois lookups from a list of IP addresses.

# File name/path of IP list. One IP per line in file.
# Currently set to user input.
ip_list=$1

# Quitely makes sure theres no hidden characters.
dos2unix -q $ip_list

# Seconds to wait between lookups:
loop_wait='1' # Is set to 1 second.

echo 'IP Address, Org Name' # Start CSV
for ip in $(cat $ip_list) # Start looping through IPs
do

unset result

result=$(whois $ip | grep -i -m 1 OrgName: | awk -F ":        " '{print $2}')

if [[ -z "${result// }" ]]; then
    result=$(whois $ip | grep -i -m 1 NetName: | awk -F ":        " '{print $2}')
else
    # Org Name was found and is set.
    echo "all" >/dev/null
fi

# Output the IP address and organization name
echo "$ip*$result"

sleep $loop_wait # Pause before the next lookup to avoid flooding NS

done
