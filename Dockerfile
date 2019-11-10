FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]

RUN yum install -y wget
RUN yum groupinstall -y "Development Tools"
RUN yum install -y nmap-ncat

RUN yum install -y httpd
RUN yum install -y httpd-devel
RUN systemctl enable httpd.service
COPY httpd/conf.d/01-cgi.conf /etc/httpd/conf.d
COPY cgi-bin/index.cgi /var/www/cgi-bin/
EXPOSE 80

RUN yum install -y mariadb
RUN yum install -y mariadb-libs
RUN yum install -y mariadb-devel
COPY mariadb/character_set.cnf /etc/my.cnf.d/

RUN yum install -y libpng libpng-devel

RUN yum install -y perl
RUN yum install -y perl-devel
RUN yum install -y perl-App-cpanminus
RUN cpanm Carton

CMD ["/usr/sbin/init"]
