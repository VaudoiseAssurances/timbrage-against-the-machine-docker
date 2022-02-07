FROM packages.vaudoise.ch/dockerhub/nginx:stable-alpine as production-stage

COPY ./build/dist /usr/share/nginx/html

COPY ./build/default.conf  /etc/nginx/conf.d/default.conf
