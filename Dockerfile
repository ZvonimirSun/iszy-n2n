FROM centos:centos7
RUN yum install epel-release -y
RUN yum install libzstd -y
RUN wget https://github.com/ntop/n2n/releases/download/3.0/n2n-3.0.0-1038.x86_64.rpm -o n2n-3.0.0-1038.x86_64.rpm
RUN rpm -i n2n-3.0.0-1038.x86_64.rpm