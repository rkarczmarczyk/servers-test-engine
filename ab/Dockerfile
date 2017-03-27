FROM ubuntu:16.04

ENV TERM linux
RUN apt-get update && apt-get -y install apache2-utils

COPY scenario.sh /scenario.sh

#Entrypoint
COPY entryPoint.sh /entryPoint.sh
CMD ["/entryPoint.sh"]
