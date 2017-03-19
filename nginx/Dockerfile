FROM nginx:1.11.10

#Environment
EXPOSE 80

#Server setup
RUN mkdir -p /usr/share/nginx/html/nginx

#Entrypoint
COPY entryPoint.sh /entryPoint.sh
CMD ["/entryPoint.sh"]
