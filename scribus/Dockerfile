FROM ubuntu:14.04

RUN bash -c "echo 'deb http://ppa.launchpad.net/scribus/ppa/ubuntu trusty main' > /etc/apt/sources.list.d/scribus.list"

RUN apt-get update -y && apt-get install -y --force-yes scribus-trunk  

CMD /usr/bin/scribus-trunk
