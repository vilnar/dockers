FROM php:7.4-fpm

# Install xdebug
RUN pecl install xdebug-2.9.6 && docker-php-ext-enable xdebug

RUN apt-get update && apt-get install -y \
    libpq-dev unzip wget sudo gnupg

RUN docker-php-ext-install pdo_pgsql

# install composer globally
RUN wget -O /tmp/composer-setup.php https://getcomposer.org/installer
RUN php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
RUN rm /tmp/composer-setup.php
