FROM debian

ENV PYCHARM_HOME=/etc/pycharm
    
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git ssh curl wget zenity
RUN curl --silent --location https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y \
    openjdk-7-jre \
    libxrender1 \
    libxtst6 \
    libjpeg-dev \
    python nodejs build-essential \
    python-dev gcc g++ make \
    libpq-dev
RUN apt-get install -y \    
    ruby ruby-dev \
    gettext sqlite3 \
    libmysqlclient-dev  mysql-client

RUN npm install -g grunt gulp babel webpack abbrev xgettext-template po2json && gem install compass

ADD https://www.python.org/ftp/python/3.6.0/Python-3.6.0.tar.xz /tmp/python36.tar.xz
RUN tar -xf /tmp/python36.tar.xz -C /tmp/ && cd /tmp/Python-3.6.0 && ./configure && make && make install && rm -rf /tmp/Python-3.6.0 /tmp/python36.tar.xz 

RUN curl /tmp/ https://bootstrap.pypa.io/get-pip.py | python
RUN wget -qO- https://get.docker.com/ | sh
RUN pip install -U pip virtualenv ipython docker-compose && \
    rm -rf /var/lib/apt-lists; rm -rf /tmp/*; apt-get purge wget -y; apt-get autoremove -y	
ADD pycharm-community-2016.3.2.tar.gz /etc/pycharm 
CMD ["/etc/pycharm/pycharm-community-2016.3.2/bin/pycharm.sh"]
