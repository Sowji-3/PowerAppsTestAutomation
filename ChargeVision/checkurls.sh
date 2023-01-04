
STDOUTFILE=".tempCurlStdOut"
> $STDOUTFILE
while read $url
do
    urlstatus=$(curl --max-time 5 --silent --write-out %{response_code} --output "$STDOUTFILE" "$(url)" )
    echo " $(url)  $urlstatus" 
done
