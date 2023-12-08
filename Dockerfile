FROM ubuntu:22.04

RUN  apt-get update \
    && apt-get install sudo git vim python3-pip tcpdump -y \
    && pip install -U pip setuptools
    && cd opt \
    && sudo git clone https://github.com/giampaolo/pyftpdlib.git \
    && cd pyftpdlib-master \
    && pip install pyopenssl \
    && python3 setup.py install \
    && apt-get install telnet -y
