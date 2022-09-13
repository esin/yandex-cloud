#!/bin/bash

### Need to run netcat server
rm /tmp/fifo || true
mkfifo /tmp/fifo
LISTENIP=127.0.0.1
cat /tmp/fifo | nc -lvk4N $LISTENIP $PORT &
echo "netcat server started"
### Need to run netcat server



#### Here your script
sleep 0.5;
curl https://api.github.com/octocat
#### Here your script



### After everything is done
echo -e 'HTTP/1.1 200\r\nConnection: close\r\n\r\n\r\nEnjoy the silence' > /tmp/fifo
while true; do
    sleep 0.5
done

exit 0
