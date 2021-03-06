FROM php:7.4-fpm
MAINTAINER Rodion Kachkin "kyleRQWS@gmail.com"

RUN apt-get update && apt-get -y install \
    libfreetype6-dev \
    libicu-dev \
    libjpeg62-turbo-dev \
    libmcrypt-dev \
    libpng-dev \
    libxslt1-dev \
    libzip-dev \
    libonig-dev

RUN docker-php-ext-install \
    bcmath \
    intl \
    mbstring \
    pdo_mysql \
    soap \
    xsl \
    zip \
    sockets

RUN docker-php-ext-configure gd --with-freetype=/usr/lib64 --with-jpeg=/usr/lib && \
    docker-php-ext-install gd && docker-php-ext-enable gd

RUN pecl channel-update pecl.php.net && \
    pecl install mcrypt

# install xdebug
RUN pecl install -o -f xdebug-2.9.8 && docker-php-ext-enable xdebug

# install composer
RUN curl -sS https://getcomposer.org/installer | \
    php -- --install-dir=/usr/local/bin --filename=composer --prefer-dist --version=1.10.19 && \
    mkdir /var/www/.composer

# install mailcatcher
RUN apt-get update && \
    apt-get -y install build-essential ruby-full libsqlite3-dev && \
    gem install mailcatcher --no-rdoc --no-ri

COPY conf/php.ini /usr/local/etc/php/
COPY conf/xdebug.ini /usr/local/etc/php/conf.d/xdebug.ini
COPY conf/php-fpm.conf /usr/local/etc/

RUN usermod -u 1000 www-data && usermod -G 100 www-data && \
    chown -R www-data:www-data /var/www

WORKDIR /var/www/html
EXPOSE 9000

CMD ["/usr/local/sbin/php-fpm"]
