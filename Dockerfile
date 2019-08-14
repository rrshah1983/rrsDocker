FROM ubuntu

# File Author / Maintainer
MAINTAINER Ritesh Shah

# Update the repository sources list
RUN apt-get update

# Install and run apache
RUN apt-get install -y apache2 && apt-get clean



ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2



WORKDIR /var/www/html

EXPOSE 80


