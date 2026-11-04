FROM nginxinc/nginx-unprivileged:alpine

USER root

RUN apk update && apk upgrade --no-cache

COPY index.html /usr/share/nginx/html/index.html

USER 101

EXPOSE 8080