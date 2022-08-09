FROM ubuntu:latest
MAINTAINER WAQARAHMAD
WORKDIR /var/www/httpd
RUN apt-get install -y httpd
COPY /root/tmp/limelight-html /var/www/httpd
COPY . .
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND" ]
EXPOSE 80
