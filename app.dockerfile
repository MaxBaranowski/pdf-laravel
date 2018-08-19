FROM php:7.1-fpm

RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y git
RUN apt-get install -y nano
RUN apt-get install -y sed

#RUN a2enmod rewrite

RUN docker-php-ext-install zip
RUN curl -sS https://getcomposer.org/installer | php \
 -- --install-dir=/usr/local/bin --filename=composer --prefer-dist

WORKDIR /var/www