FROM amazonlinux
LABEL maintainer="dmitriy_skopintsev@epam.com"

RUN yum -y install mariadb mariadb-server
RUN mysql_install_db
RUN chown -R mysql:mysql /var/lib/mysql

ENV MYSQL_USER=awsmodule \
    MYSQL_PASSWORD=somepass \
    MYSQL_DATABASE=moduledb \
    MYSQL_ROOT_PASSWORD=somepath

EXPOSE 3306/tcp

CMD mysqld_safe
