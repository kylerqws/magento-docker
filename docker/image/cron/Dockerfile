ARG PHP_IMAGE_NAME
FROM ${PHP_IMAGE_NAME}

RUN rm -rf /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    apt-get update && apt-get install -y cron

CMD ["/usr/local/bin/start-cron"]
