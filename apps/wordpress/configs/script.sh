#! /bin/bash

php-fpm8.1 start --deamonize && \
nginx -g 'daemon off;'
