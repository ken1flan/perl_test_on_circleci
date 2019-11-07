FROM centos:7

RUN yum install -y wget
RUN yum groupinstall -y "Development Tools"
RUN yum install -y nmap-ncat

RUN yum install -y httpd
RUN yum install -y httpd-devel

RUN yum install -y mariadb
RUN yum install -y mariadb-libs
RUN yum install -y mariadb-devel
COPY mariadb/character_set.cnf /etc/my.cnf.d/

RUN yum install -y perl
RUN yum install -y perl-devel
RUN yum install -y perl-App-cpanminus
RUN cpanm Carton

EXPOSE 80
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]