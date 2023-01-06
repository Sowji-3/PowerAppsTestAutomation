#!/usr/bin/env bash
while read url
do
#  urlstatus=$(curl -s -L -o /dev/null -I -w '%{http_code}' "$url")
  urlstatus=$(curl -s -L -I -o /dev/null --silent  --write-out '%{http_code}' "$url" )
  if $urlstatus= 200;
  then 
    echo "url Exists : $url"
  else
    echo "url doesnot exist : $url"
  fi
     
done < $1
