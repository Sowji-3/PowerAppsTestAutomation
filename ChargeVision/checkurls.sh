#!/usr/bin/env bash
while read url
do
#  urlstatus=$(curl -s -L -o /dev/null -I -w '%{http_code}' "$url")
  urlstatus=$(curl -s -L -I -o /dev/null --silent  --write-out '%{http_code}' "$url" )
 
 # echo "Status code for $url is $urlstatus"
  if test $urlstatus -eq 200; then 
       echo "$url : $urlstatus url is available"
        
  else
       echo "$url : $urlstatus url is not available"
  fi
     
done < $1
