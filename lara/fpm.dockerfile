FROM  php:7.1-fpm

ARG CONTAINER_USER='php-fpm'

ENV UID 1000
ENV GID 1000

WORKDIR /usr/src/myapp 

# Create new user
RUN useradd -m ${CONTAINER_USER}

RUN apt-get update && \
    apt-get -y upgrade
RUN docker-php-ext-install pdo_mysql

USER "${CONTAINER_USER}"