FROM centos:6
RUN yum makecache fast \
    && yum -y install deltarpm epel-release \
    && yum -y update \
    && yum install -y python-devel \
      python-pip \
      python-urllib3 \
      pyOpenSSL \
      python2-ndg_httpsclient \
      python-pyasn1 \
      git \
      sudo \
      iproute \
      initscripts
RUN pip install -U setuptools \
    && pip install ansible testinfra pytest pytest-xdist pytest-gitignore apacheconfig
