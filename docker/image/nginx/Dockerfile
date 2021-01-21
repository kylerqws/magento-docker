FROM nginx:1.19
MAINTAINER Victor Todoran "victorvulpeatodoran@gmail.com"

ENV PHP_HOST phpfpm
ENV PHP_PORT 9000

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/
COPY ./bin/start /usr/local/bin/start

WORKDIR /var/www/html
EXPOSE 80

CMD ["/usr/local/bin/start"]
