FROM centos:latest
MAINTAINER WAQARAHMAD
RUN apt-get install -y httpd \ zip \ unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page281/limelight.zip /var/www/httpd
WORKDIR /var/www/httpd
RUN unzip limelight.zip
RUN cp -rvf limelight/* .
RUN rm -rf limelight limelight.zip
CMD ["/usr/sbin/httpd" , "-D" , "FOREGROUND" ]
EXPOSE 80
