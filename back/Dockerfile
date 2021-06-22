FROM nginx

ENV PHP_VERSION=7.3
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get -q update && apt-get -qy install && apt-get -qy install php-fpm
COPY nginx.conf /etc/nginx/nginx.conf
COPY www.conf /etc/php/${PHP_VERSION}/fpm/pool.d/www.conf
RUN mkdir -p /var/www/{html,error} /run/php
COPY index.php /var/www/html/index.php
COPY 404.html /var/www/error/404.html

