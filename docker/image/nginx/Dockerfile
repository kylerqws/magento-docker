FROM nginx:1.19
MAINTAINER Victor Todoran "victorvulpeatodoran@gmail.com"

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/
COPY bin/* /usr/local/bin/

WORKDIR /var/www/html
EXPOSE 80

CMD ["/usr/local/bin/start"]
