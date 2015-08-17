#!/usr/bin/env bash
sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php5/apache2/php.ini
sed -i "s/;date.timezone =.*/date.timezone = UTC/" /etc/php5/cli/php.ini
