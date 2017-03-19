FROM httpd:2.4.25

#Environment
EXPOSE 80

#Server setup
RUN mkdir -p /usr/local/apache2/htdocs/httpd

#Entrypoint
COPY entryPoint.sh /entryPoint.sh
CMD ["/entryPoint.sh"]
