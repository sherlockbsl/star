FROM ubuntu:latest
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install apache2
RUN rm /var/www/html/index.html
COPY index.html /var/www/html/
EXPOSE 80
CMD apachectl -D FOREGROUND
