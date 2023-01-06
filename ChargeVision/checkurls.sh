#!/usr/bin/env bash
while read url
do
#  urlstatus=$(curl -s -L -o /dev/null -I -w '%{http_code}' "$url")
  urlstatus=$(curl -s -L -I -o /dev/null --silent  --write-out '%{http_code}' "$url" )
  echo "$url $urlstatus"
done < $1
