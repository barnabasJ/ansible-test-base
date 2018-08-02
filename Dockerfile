FROM centos/systemd:latest
RUN yum install -y epel-release \
    && yum install -y python-devel python-pip openssl-devel libffi-devel gcc git sudo iproute initscripts
