FROM amazonlinux
LABEL maintainer="dmitriy_skopintsev@epam.com"

RUN yum -y install mariadb mariadb-server

EXPOSE 3306/tcp

CMD mysqld --data-dir=/var/lib/mysql

