FROM ubuntu:20.04

WORKDIR /src

RUN apt-get update && apt-get install -y jq netcat curl && apt-get clean

ADD runserver.sh .

ENTRYPOINT ["/src/runserver.sh"]
