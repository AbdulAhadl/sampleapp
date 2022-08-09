FROM ubuntu:latest
MAINTAINER WAQARAHMAD
WORKDIR /var/www/httpd
RUN  sudo apt install httpd* -y
COPY /root/tmp/limelight-html /var/www/httpd
COPY . .
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND" ]
EXPOSE 80
