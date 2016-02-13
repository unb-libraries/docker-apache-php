FROM unblibraries/apache
MAINTAINER Jacob Sanford <jsanford_at_unb.ca>

ENV COMPOSER_PATH /usr/bin

RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8

CMD ["/sbin/my_init"]

RUN apt-get update && \
  DEBIAN_FRONTEND="noninteractive" apt-get install --yes php5-cli php5-mysql \
  php5-pgsql php5-sqlite php5-curl php5-gd php5-mcrypt php5-intl \
  php5-imap php5-tidy libapache2-mod-php5 && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=${COMPOSER_PATH} --filename=composer
ADD conf/php5/apache2/php.ini /etc/php5/fpm/php.ini

ADD init/ /etc/my_init.d/
RUN chmod -v +x /etc/service/*/run

EXPOSE 80
