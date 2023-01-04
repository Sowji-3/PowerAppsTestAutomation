
while read url
do
    urlstatus=$(curl -o /dev/null --silent --head --write-out '%{http_code}' "$url" )
    echo "$url  $urlstatus" 
done
