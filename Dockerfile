FROM linux:latest
MAINTAINER sowbarnika
RUN yum install -y httpd\
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page260/mini-profile.zip /var/www/html
WORKDIR /var/www/html
RUN unzip mini-profile.zip
RUN  cp -rvf markups-mini-profile/*
RUN rm-rf__MASCOSX markups-mini-profile mini-profile.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
