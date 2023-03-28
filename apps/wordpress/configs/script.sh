#!/usr/bin/env sh
set -e
php-fpm8.1 start --deamonize
nginx -g 'daemon off;'
