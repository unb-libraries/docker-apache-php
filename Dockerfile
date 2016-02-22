FROM unblibraries/apache:alpine
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

ENV COMPOSER_PATH /usr/local/bin
ENV PHP_ERROR_LOG ${APP_LOG_DIR}/${APP_HOSTNAME}.php.error.log

RUN apk --update add php-apache2 curl php-curl php-cli php-json php-phar php-openssl && \
  rm -f /var/cache/apk/* && \
  curl -sS https://getcomposer.org/installer | php -- --install-dir=${COMPOSER_PATH} --filename=composer

COPY conf/php/php.ini /etc/php/php.ini

COPY scripts /scripts
RUN chmod -R 755 /scripts
