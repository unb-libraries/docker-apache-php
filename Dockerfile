FROM unblibraries/apache:alpine
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

ENV COMPOSER_PATH /usr/local/bin

RUN apk --update add php-apache2 curl php-cli php-json php-phar php-openssl && \
  rm -f /var/cache/apk/* && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=${COMPOSER_PATH} --filename=composer

COPY conf/php/php.ini /etc/php/php.ini
