FROM debian

    
RUN apt-get update && \
    apt-get install -y git curl wget zenity \ 
    openjdk-7-jre \
    libxrender1 \
    libxtst6 \
    build-essential \
    gcc g++ make \
    libpq-dev \
    libmysqlclient-dev  mysql-client 
ADD go1.9.2.linux-amd64.tar.gz /usr/local/
ADD goland-2017.3.tar.gz /etc/goglang
ENV GOROOT=/usr/local/go
CMD ["/etc/goglang/GoLand-2017.3/bin/goland.sh"]
