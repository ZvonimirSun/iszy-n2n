FROM centos:centos7
RUN yum install wget epel-release -y \
    &&  wget https://github.com/ntop/n2n/releases/download/3.0/n2n-3.0.0-1038.x86_64.rpm \
    && yum install n2n-3.0.0-1038.x86_64.rpm -y \
    && touch /tmp/n2n.out \
    && ln -sf /dev/stdout /tmp/n2n.out
EXPOSE 7654
CMD ["supernode", "-p", "7654", "-f", ">", "/tmp/n2n.out"]