FROM nginx:1.19
MAINTAINER Victor Todoran "victorvulpeatodoran@gmail.com"

COPY ./conf/nginx.conf /etc/nginx/
COPY ./conf/default.conf /etc/nginx/conf.d/

WORKDIR /var/www/html
EXPOSE 80

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
