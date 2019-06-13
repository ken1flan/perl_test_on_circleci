FROM centos:7

RUN yum install -y wget
RUN yum groupinstall -y "Development Tools"

RUN yum install -y perl
RUN yum install -y perl-devel
RUN yum install -y perl-App-cpanminus
RUN cpanm Test::More
