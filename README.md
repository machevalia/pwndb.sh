# pwndb.sh
Script to utilize the v2 pwndb onion site to find leaked passwords.

Problem: Many want to continue using the pwndb database to find leaked passwords. However, Tor is no longer supporting v2 addresses after version 11 and no one seems to have found a v3 onion for pwndb (if you have let me know :) ).

Solution: 
1. Download the version 10.5.10 of Tor browser from my Google Drive (yikes, I know I wouldn't trust me either), OR if Tor hasn't taken it down yet, here: https://dist.torproject.org/torbrowser/10.5.10/
2. Un-zip that son of a gun somewhere on your device.
3. Start the browser the first time, turn off automatic updates and check the box to automatically connect to Tor.
4. Within the pwndb.sh script, replace the location of your start-browser launcher with the location of your browser launcher. 
5. Make your script executable (chmod +x) and profit. 

Troubleshooting:
* My browser won't start - you probably didn't put the file path in correctly. Check there.
* Not getting any results or connection errors - your Tor browser might be running on a different SOCKS port than mine. Run the curl command by itself with the browser running to make sure its successfully connecting. If it isn't run a netstat to figure out what port your Tor browser is running on.

Hope this helps and you enjoy.

I might make the script more robust to auto detect ports and such but let's see if anyone uses this at all first.
