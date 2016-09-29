FROM   ubuntu:16.04


# Make sure we don't get notifications we can't answer during building.
ENV    DEBIAN_FRONTEND noninteractive

RUN apt-get --yes update
RUN apt-get --yes install software-properties-common

# Add the landscape PPA
RUN	   add-apt-repository ppa:landscape/16.06

# Download and install everything from the repos.
RUN    apt-get --yes update; apt-get --yes upgrade
# Install all the non-landscape dependencies
RUN    apt-get --yes install apache2 postgresql-9.5 postgresql-plpython-9.5 postgresql-contrib-9.5 postgresql-9.5-debversion rabbitmq-server
# Install all the landscape dependencies.
RUN    apt-get --yes install binutils \
 bzip2 \
 ca-certificates \
 ceph-common \
 cron \
 curl \
 juju-core \
 juju-2.0 \
 landscape-common \
 language-pack-en \
 libjs-yui3-full \
 libjs-yui3-min \
 logrotate \
 postfix \
 postgresql-client \
 procmail \
 python-amqp \
 python-apt \
 python-bson \
 python-chameleon \
 python-convoy \
 python-pycurl \
 python-dateutil \
 python-fake-factory \
 python-genshi \
 python-gnupg \
 python-lxml \
 python-netaddr \
 python-oauth \
 python-oops-amqp \
 python-oops-datedir-repo \
 python-openid \
 python-openssl \
 python-prettytable \
 python-psycopg2 \
 python-pyparsing \
 python-storm \
 python-transaction \
 python-twisted-core \
 python-twisted-web \
 python-twisted-names \
 python-txamqp \
 python-txaws \
 python-txlongpoll \
 python-tz
