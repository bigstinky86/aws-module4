FROM amazonlinux
LABEL maintainer="dmitriy_skopintsev@epam.com"

RUN yum -y install httpd mod_php php php-cli php-mysql
RUN mkdir -p /var/www/app/public_html

COPY httpd/httpd.conf /etc/httpd/conf/httpd.conf
COPY index.php /var/www/app/public_html

EXPOSE 8080/tcp

CMD apachectl -D FOREGROUND
