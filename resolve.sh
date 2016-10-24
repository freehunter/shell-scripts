#!/bin/bash
#Author: freehunter
#resolve hostnames to IP addresses
#usage: “./resolve.sh server_list.txt”

while read line
do
 resolved=$( echo $line | cut -d "'" -f 2 )
 resolved2=$( echo $resolved | grep -v "#" | cut -d " " -f 2)
 echo $resolved2 >> resolve_out.txt
done <<< "`nslookup < $1 | grep "Address"`"
