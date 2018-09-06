FROM centos:6

RUN yum install centos-release-SCL \
  && yum -y groupinstall development \
  && yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel

RUN cd ~ && wget https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tar.xz \
  && tar Python-2.7.12.tar.xz \
  && cd Python-2.7.12 \
  && ./configure --prefix=/usr/local --enable-unicode=ucs4 --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib" \
  && make && make altinstall

RUN cd ~ && wget https://bootstrap.pypa.io/ez_setup.py \
  && python2.7 ez_setup.py \
  && easy_install-2.7 pip

RUN yum makecache fast \
    && yum -y install deltarpm epel-release \
    && yum -y update \
    && yum -y install git \
      sudo \
      iproute \
      initscripts
RUN pip install -U setuptools \
    && pip install ansible testinfra pytest pytest-xdist pytest-gitignore apacheconfig
