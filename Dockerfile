FROM centos:latest
MAINTAINER sowbarnika
RUN yum install -y httpd 
RUN yum install -y unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page260/mini-profile.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip mini-profile.zip
RUN cp -rvf templatemo_530_mini_profile/index.html .
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
