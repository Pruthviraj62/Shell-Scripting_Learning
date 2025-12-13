#!/bin/bash

######################################################### Author : Pruthviraj Patil
# Date : 12/12/2025
#
# This Script outputs the node Health
# Version : V1
########################################################

set -x  # Debug mode  
set -e  # exist the script when there is an error 
set -o  # pipefail (set -e will not errorout when there is pipefail so we have to use this set -o for pipefail)

# same above cmd you can write as set -exo pipefail

df -h

free -g 

nproc 

ps -ef | grep amazon | awk -F" " '{print $2}' 

