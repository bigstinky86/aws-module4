FROM amazonlinux
LABEL maintainer="dmitriy_skopintsev@epam.com"

RUN yum -y install mariadb mariadb-server
RUN mysql_install_db
RUN chown -R mysql:mysql /var/lib/mysql

COPY ./dbserver_startup.sh /bin/dbserver_startup.sh
RUN chmod +x /bin/dbserver_startup.sh

EXPOSE 3306/tcp

CMD /bin/dbserver_startup.sh mysqld_safe
