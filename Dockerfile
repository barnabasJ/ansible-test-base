FROM centos:6
RUN yum install -y epel-release \
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
RUN pip install -U pip && pip install -U setuptools \
    && pip install ansible testinfra pytest pytest-xdist pytest-gitignore apacheconfig
