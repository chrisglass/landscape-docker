FROM ubuntu:16.04

# Make sure we don't get notifications we can't answer during building.
ENV    DEBIAN_FRONTEND noninteractive

RUN apt-get --yes update
RUN apt-get --yes install \
software-properties-common \
apache2 \
postgresql-9.5 \
postgresql-plpython-9.5 \
postgresql-contrib-9.5 \
postgresql-9.5-debversion \
rabbitmq-server \
net-tools \
supervisor \
sudo

# Add the landscape PPA
RUN	add-apt-repository ppa:landscape/16.06
RUN apt-get --yes update; apt-get --yes upgrade
RUN apt-get --yes install landscape-server-quickstart

# Add the supervisord config file
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 443

ENTRYPOINT ["/usr/bin/supervisord"]
