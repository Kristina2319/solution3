#!/usr/bin/env sh
set -e
service php-fpm start
nginx -g 'daemon off;'
