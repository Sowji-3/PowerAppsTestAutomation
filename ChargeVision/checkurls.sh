#!/bin/bash
FILE=$1
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else 
    echo "$FILE does not exist."
    exit 1
fi
while IFS="" read -r p || [ -n "$p" ]
# while IFS= read -r p
do
  retcode=$(curl -s -L -o /dev/null -I -w "%{http_code}" $p)
if [ $retcode -eq 200 ]; then
        restext="Website found"
else
        restext="Website NOT found"
fi
  printf '%s \n' "$restext $p $retcode"
  echo "$restext $p $retcode" >> urlstatus1.txt
done < $1
