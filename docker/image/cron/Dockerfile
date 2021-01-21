ARG PHP_IMAGE_NAME

FROM ${PHP_IMAGE_NAME}
MAINTAINER Rodion Kachkin "kyleRQWS@gmail.com"

# disable xdebug
RUN rm -rf /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

# install cron
RUN apt-get update && apt-get install -y cron

# cleanup package manager
RUN apt-get autoclean && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY bin/* /usr/local/bin/

CMD ["/usr/local/bin/start"]
