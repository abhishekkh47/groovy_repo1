FROM ubuntu:latest
RUN apt-get clean \
    && apt-get -y update
RUN apt-get install -y apache2 \
    apache2-utils
COPY index.html /var/www/html/
ENTRYPOINT ["apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80
    
