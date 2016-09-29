FROM tribaal/landscape-base

# Make sure we don't get notifications we can't answer during building.
ENV    DEBIAN_FRONTEND noninteractive

# Install the PPA
RUN apt-get --yes update
RUN apt-get --yes install software-properties-common

# Add the landscape PPA
RUN	   add-apt-repository ppa:landscape/16.06
RUN apt-get --yes update; apt-get --yes upgrade
RUN apt-get --yes install net-tools landscape-server-quickstart supervisor

# Add the supervisord config file
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80 443

ENTRYPOINT ["/usr/bin/supervisord"]
