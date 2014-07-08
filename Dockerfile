FROM phusion/baseimage
MAINTAINER Brian Prodoehl <bprodoehl@connectify.me>

# Ensure UTF-8
RUN apt-get update
RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

# Install dependencies
RUN apt-get -y install dnsmasq dnsutils iptables tcpdump

RUN mkdir /etc/service/dnsmasq
ADD dnsmasq.sh /etc/service/dnsmasq/run
ADD dnsmasq.conf /etc/dnsmasq.conf

EXPOSE 22 53

# Set correct environment variables.
ENV HOME /root

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]

# Clean up APT when done.
#RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
