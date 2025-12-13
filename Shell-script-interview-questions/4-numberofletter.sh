#!/bin/bash

####################################################### Script : Write a Script to print number of 's' in mississippi
######################################################

x=mississipi

grep -o "s" <<<"$x" | wc -l

