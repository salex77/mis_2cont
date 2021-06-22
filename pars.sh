#!/bin/bash
if [ -n "$1" ] 
then
 myfile=$1
else
 myfile="log/host.access.log"
fi

list_ip=()

if [ -e $myfile ] 
then
 IFS=$'\n'
 for var in $(< $myfile)
  do
     cip=($(echo $var | awk '{print $1}'))
     list_ip[${#list_ip[*]}]=$cip
  done
    echo "${list_ip[@]}" | tr ' ' '\n' | sort -u  > unique_ip.txt
  else
 echo "The $myfile not exists!"
fi

