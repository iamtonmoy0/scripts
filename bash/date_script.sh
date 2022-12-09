#!/bin/bash

PATH_TO_DIRSEARCH="/Users/"
TODAY=$(date)
echo "this scen was created on $TODAY"
DOMAIN=$1
DIRECTORY=${DOMAIN}_recon
echo "creating directory $DIRECTORY"
mkdir $DIRECTORY
nmap $DOMAIN > $DIRECTORY/nmap
echo "the result of scean is stored in $DIRECTORY/nmap ."
$PATH_TO_DIRSEARCH/dirsearch.py -u $DOMAIN -e php --simple-report=$DIRECTORY/dirsearch
echo "the result of dirsearch scan  are stored in $DIRECTORY/dirsearch. "



