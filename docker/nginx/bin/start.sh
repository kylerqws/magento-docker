#!/usr/bin/env bash

[ -n "${PHP_HOST}" ] && sed -i "s/PHP_HOST/${PHP_HOST}/" /etc/nginx/conf.d/default.conf
[ -n "${PHP_PORT}" ] && sed -i "s/PHP_PORT/${PHP_PORT}/" /etc/nginx/conf.d/default.conf

/usr/sbin/nginx -g "daemon off;"
