ARG PHP_IMAGE_NAME

FROM ${PHP_IMAGE_NAME}
MAINTAINER Rodion Kachkin "kyleRQWS@gmail.com"

# disable xdebug
RUN rm -rf /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

COPY bin/* /usr/local/bin/

CMD ["su", "-c", "/usr/local/bin/start", "-s", "/bin/sh", "www-data"]
