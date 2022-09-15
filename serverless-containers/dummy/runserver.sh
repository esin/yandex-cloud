#!/bin/bash

### Need to run netcat server
rm /tmp/http.response 2> /dev/null || true
mkfifo /tmp/http.response
LISTENIP=127.0.0.1
cat /tmp/http.response | nc -lvk4N $LISTENIP $PORT > /tmp/http.request &
echo "netcat server started"
sleep 0.5
### Need to run netcat server

### Some useful info about http request
HTTP_REQUEST_METHOD=$(cat /tmp/http.request | head -n1 | cut -f1 -d' ')
HTTP_REQUEST_PATH=$(dirname `cat /tmp/http.request | head -n1 | cut -f2 -d' '`)
HTTP_REQUEST_PARAMS=$(cat /tmp/http.request | head -n1 | cut -f2 -d' ' | cut -f2 -d'?')
echo "HTTP Method: $HTTP_REQUEST_METHOD"
echo "HTTP request path: $HTTP_REQUEST_PATH"
echo "HTTP request params: $HTTP_REQUEST_PARAMS"
### Some useful info about http request



#### Here your script
sleep 0.5;
curl https://api.github.com/octocat
#### Here your script



### After everything is done
echo -e 'HTTP/1.1 200\r\nConnection: close\r\n\r\n\r\nEnjoy the silence' > /tmp/http.response
while true; do
    sleep 0.5
done

exit 0
