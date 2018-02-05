# base image
FROM node:9.4

ARG CONTAINER_USER='php-fpm'

ARG APP_NAME
ENV APP_NAME=${APP_NAME}

ENV UID 1000
ENV GID 1000

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

RUN useradd -m ${CONTAINER_USER}

# install and cache app dependencies
ADD ${APP_NAME}/package.json /usr/src/app/package.json
RUN npm install --silent
RUN npm install react-scripts@1.1.0 -g --silent

# start app
CMD ["npm", "start"]

# USER "${CONTAINER_USER}"