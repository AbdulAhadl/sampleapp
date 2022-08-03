FROM centos:latest
MAINTAINER WAQARAHMAD
RUN apt-get install httpd /zip /unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/traveler.zip /var/www/httpd
WORKDIR /var/www/httpd
RUN unzip traveler.zip
RUN cp -rvf traveler* .
RUN rm -rf traveler traveler.zip
CMD["/usr/sbin/httpd" , "-D" , "FOREGROUND" ]
EXPOSE 80
