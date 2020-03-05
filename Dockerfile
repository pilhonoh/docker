FROM ubuntu:18.04
MAINTAINER Dongbin Na <eric93@nate.com>
 
#avoiding user interaction with tzdata Test용
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y apache2 # Install Apache web server (Only 'yes')
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:ondrej/php # For Installing PHP 5.6
RUN apt-get update
RUN apt-get install -y php5.6

RUN apt-get install -y php5.6-mysql

EXPOSE 80  
CMD ["apachectl", "-D", "FOREGROUND"]