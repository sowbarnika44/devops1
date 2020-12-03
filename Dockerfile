FROM centos:latest
MAINTAINER sowbarnika
RUN yum install -y httpd 
RUN yum install -y unzip
COPY index.html /var/www/html/
WORKDIR /var/www/html
RUN unzip mini-profile.zip
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
