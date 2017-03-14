FROM ubuntu:14.04
RUN apt-get update && apt-get upgrade -y && apt-get install -y wget


######################## nginx #########################
#Installation
RUN apt-get install -y nginx 

#Environment
EXPOSE 8081

#Server setup
COPY nginx.conf /etc/nginx/
RUN mkdir -p /usr/share/nginx/html/nginx


######################## apache2 #########################
#Installation
RUN apt-get install -y apache2

#Environment
EXPOSE 8091

#Server setup
COPY ports.conf /etc/apache2/
RUN mkdir -p /usr/share/apache2/default-site/apache2


######################## gwan #########################
#Installation
RUN apt-get install -y libc-dev pciutils
ADD http://gwan.com/archives/gwan_linux64-bit.tar.bz2 /opt/gwan/
RUN cd /opt/gwan && tar -xjf gwan_linux64-bit.tar.bz2
#RUN mv 0.0.0.0\:8080 0.0.0.0\:8100 2>/dev/null && mv 0.0.0.0\:8081_PONG 0.0.0.0\:8101_PONG 2>/dev/null

#Environment
EXPOSE 8100 8101

#Server setup


#Entrypoint
COPY entryPoint.sh /entryPoint.sh
CMD ["/entryPoint.sh"]
