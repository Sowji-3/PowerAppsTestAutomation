
STDOUTFILE=".tempCurlStdOut"
> $STDOUTFILE
while read url
do
    urlstatus=$(curl --max-time 5 --silent --write-out %{response_code} --output "$STDOUTFILE" "$URL" )
    echo "$URL  $urlstatus" 
done
