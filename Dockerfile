FROM centos:centos7
RUN wget https://github.com/ntop/n2n/releases/download/3.0/n2n-3.0.0-1038.x86_64.rpm -o n2n-3.0.0-1038.x86_64.rpm
RUN yum install n2n-3.0.0-1038.x86_64.rpm -y