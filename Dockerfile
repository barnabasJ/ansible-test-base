FROM centos/systemd:latest
RUN yum install -y epel-release \
    && yum install -y python-devel python-pip git sudo iproute initscripts
