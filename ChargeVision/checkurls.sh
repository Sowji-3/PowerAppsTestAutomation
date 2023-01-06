#!/bin/bash
while read url
do
  urlstatus=$(curl -s   /dev/null --silent  --write-out '%{http_code}' "$url" )
  echo "$url $urlstatus"
done < $1
