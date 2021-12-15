# pwndb.sh
Script to utilize the v2 pwndb onion site to find leaked passwords.

Problem: Many want to continue using the pwndb database to find leaked passwords. However, Tor is no longer supporting v2 addresses after version 11 and no one seems to have found a v3 onion for pwndb (if you have let me know :)).

Solution: 
1. Download the version 10.5.10 of Tor browser from my repo or, if they haven't taken it down yet, here: https://dist.torproject.org/torbrowser/10.5.10/
2. Un-zip that son of a gun somewhere on your device
3. Start the browser the first time, turn off automatic updates.
4. Within the pwndb.sh script, replace the location of your start-browser launcher with the location of your browser launcher. 
5. Make your script executable (chmod +x) and profit. 

Hope this helps and you enjoy.
