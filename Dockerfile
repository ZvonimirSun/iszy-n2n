FROM centos:centos7
RUN yum install wget epel-release -y && wget https://github.com/ntop/n2n/releases/download/3.0/n2n-3.0.0-1038.x86_64.rpm && yum install n2n-3.0.0-1038.x86_64.rpm -y
EXPOSE 9527
CMD ["supernode","-p","9527","-F","$FEDERATION_NAME"]