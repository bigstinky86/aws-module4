FROM amazonlinux
LABEL maintainer="dmitriy_skopintsev@epam.com"

RUN yum -y install httpd
RUN chkconfig httpd on

COPY httpd/httpd.conf /etc/httpd/conf/httpd.conf

EXPOSE 80/tcp

CMD apachectl -D FOREGROUND
