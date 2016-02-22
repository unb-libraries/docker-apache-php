#!/usr/bin/env sh
if [ "$DEPLOY_ENV" = "dev" ]; then
  sed -i "s|PHP_ERROR_LOG|/proc/self/fd/2|g" /etc/php/php.ini
else
  sed -i "s|PHP_ERROR_LOG|$PHP_ERROR_LOG|g" /etc/php/php.ini
fi
