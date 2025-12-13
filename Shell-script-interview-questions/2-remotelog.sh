#Write a Script to print only errors from a remote log 
#!/bin/bash

set -o
set -e
set -x


echo "Enter a link of log file : "
read link
curl $link | grep ERROR

