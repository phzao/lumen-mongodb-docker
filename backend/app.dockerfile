FROM php:7.3-fpm

RUN apt-get update && apt-get install -y autoconf pkg-config apt-utils mariadb-client git vim openssl zip libssl-dev unzip\
    && docker-php-ext-install pdo_mysql

RUN pecl install mongodb \
    && docker-php-ext-enable mongodb

RUN groupadd dev -g 999
RUN useradd dev -g dev -d /home/dev -m

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
