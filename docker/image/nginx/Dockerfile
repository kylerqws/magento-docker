FROM nginx:1.19
MAINTAINER Victor Todoran "victorvulpeatodoran@gmail.com"

WORKDIR /var/www/html

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/
COPY bin/* /usr/local/bin/

EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
