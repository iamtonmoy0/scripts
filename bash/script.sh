#!/bin/bash
nmap $1
dirsearch.py -u $1 -e php