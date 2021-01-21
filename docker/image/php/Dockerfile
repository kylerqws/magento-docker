FROM php:7.2-fpm

RUN apt-get update && apt-get install -y && \
    cron \
    libfreetype6-dev \
    libicu-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libxslt1-dev

RUN docker-php-ext-configure gd \
    --with-freetype-dir=/usr/include/freetype2 --with-png-dir=/usr/include --with-jpeg-dir=/usr/include

RUN docker-php-ext-install \
    bcmath \
    gd \
    intl \
    mbstring \
    pdo_mysql \
    soap \
    xsl \
    zip \
    sockets

RUN pecl channel-update pecl.php.net && \
    pecl install mcrypt-1.0.1

# install Composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer --prefer-dist && \
    mkdir /var/www/.composer

# install Xdebug
RUN pecl install -o -f xdebug-2.9.8 && docker-php-ext-enable xdebug

# install Mailcatcher
RUN apt-get update && \
    apt-get -y install build-essential ruby-full libsqlite3-dev && \
    gem install mailcatcher --no-rdoc --no-ri

ENV PHP_MEMORY_LIMIT 4G
ENV PHP_PORT 9000
ENV PHP_PM dynamic
ENV PHP_PM_MAX_CHILDREN 10
ENV PHP_PM_START_SERVERS 4
ENV PHP_PM_MIN_SPARE_SERVERS 2
ENV PHP_PM_MAX_SPARE_SERVERS 6

COPY conf/php.ini /usr/local/etc/php/
COPY conf/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY conf/php-fpm.conf /usr/local/etc/
COPY bin/* /usr/local/bin/

RUN usermod -u 1000 www-data && usermod -G 100 www-data && \
    chown -R www-data:www-data /var/www

WORKDIR /var/www/html
EXPOSE 9000

CMD ["/usr/local/bin/start"]
