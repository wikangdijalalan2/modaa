FROM ubuntu:18.04

ADD entrypoint1.sh /entrypoint1.sh
RUN apt-get update && apt-get -qq -y install wget
RUN chmod +x /entrypoint1.sh
ENTRYPOINT ["/entrypoint1.sh"]
