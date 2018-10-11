FROM amazonlinux
LABEL maintainer="dmitriy_skopintsev@epam.com"

RUN yum -y install mariadb mariadb-server
RUN mysql_install_db
RUN chown -R mysql:mysql /var/lib/mysql

VOLUME ./my.cnf.d/server.cnf:/etc/my.cnf.d/server.cnf

EXPOSE 3306/tcp

CMD mysqld_safe
