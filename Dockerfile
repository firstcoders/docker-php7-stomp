FROM php:7.0-apache

RUN apt-get update && \
    apt-get -yq install libssl-dev && \
    yes 'yes' | pecl install stomp-2.0.0 && \
    docker-php-ext-enable stomp
