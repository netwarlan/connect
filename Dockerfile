## Pull our base image
FROM nginx

## Image Information
LABEL maintainer="Jeff Nelson <jeff@netwar.org>"
ARG DEBIAN_FRONTEND=noninteractive

## Copy some files into our image
COPY ./nginx/index.html /www/data/index.html
COPY ./nginx/nginx.conf /etc/nginx/conf.d/default.conf

## Start
CMD ["nginx", "-g", "daemon off;"]