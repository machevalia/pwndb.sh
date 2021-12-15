#!/bin/bash

#Opening old tor-browser so we can access v2 onions
echo "Gotta open that old school v2 Tor browser so we can get to your onion. Please don't close until this script is complete."
#replace the file path seen below to yours :) use mine as an example if you wish
nohup sh -c /home/Machevalia/Downloads/tor-browser_en-US/Browser/start-tor-browser &>/dev/null &

#Take user input for domain to be searched:
echo "Enter the domain you want to target:"
read domain
printf "\n"
echo "Looking for results on $domain"
printf "\n"

#lookup function - note that my Tor browser used port 9150 for the SOCKS proxy, yours might be different. Netstat -antp will be your friend if you need to change that.
lookup=$(curl --proxy socks5h://127.0.0.1:9150 -i -s -k -X 'POST' http://pwndb2am4tzkvold.onion --data-binary "luser=&domain=$domain&luseropr=0&domainopr=0&submitform=em"| grep "luser\|password" >> $domain.txt)

#clean up the results file:

clean=$(sed -i -e '1,10d' $domain.txt)

#read results
count=$(wc -l $domain.txt| awk '{ print $1 / 2  }')
echo "Maximum Pwnage! "
echo "You received $count leaked credentials in $domain.txt"
echo "You can close your Tor browser now."
printf "\n"
