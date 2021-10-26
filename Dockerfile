FROM centos:latest
MAINTAINER raviteja6758@gmail.com
RUN yum install httpd -y \
zip\
unzip
ADD https://www.free-css.com/assests/files/free-css-templates/download/page247/kindle.zip /var/www/html
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
