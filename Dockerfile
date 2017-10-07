FROM ubuntu:16.04

RUN apt-get update &&  apt-get install curl htop make gcc libnetfilter-queue-dev git net-tools wget

RUN mkdir /home/freebind-source
RUN git clone https://github.com/blechschmidt/freebind.git /home/freebind-source/.
RUN cd /home/freebind-source &&  make install

#ip -6 route add local 2001:470:b326::/48 dev lo

# TEST
#freebind -r 2001:470:b326::/48 wget -qO- ipv6.wtfismyip.com/text