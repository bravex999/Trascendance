#!/bin/sh
set -eu


if [ ! -f /etc/nginx/ssl/transcendence.crt ]; then
    openssl req -x509 -nodes -newkey rsa:2048 -days 365 \
        -subj "/C=ES/ST=Madrid/L=42/O=Transcendence/CN=${DOMAIN_NAME}" \
        -keyout /etc/nginx/ssl/transcendence.key \
        -out /etc/nginx/ssl/transcendence.crt
fi

exec nginx -g 'daemon off;'
