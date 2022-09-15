#!/bin/bash

### Need to run netcat server
rm /tmp/http.response || true
mkfifo /tmp/http.response
LISTENIP=127.0.0.1
cat /tmp/http.response | nc -lvk4N $LISTENIP $PORT > /tmp/http.request &
echo "netcat server started"
### Need to run netcat server



#### Here your script
sleep 0.5;
curl https://api.github.com/octocat
#### Here your script

echo "OUT: "
cat /tmp/http.request


### After everything is done
echo -e 'HTTP/1.1 200\r\nConnection: close\r\n\r\n\r\nEnjoy the silence' > /tmp/http.response
while true; do
    sleep 0.5
done

exit 0
