FROM ruby:2.2
MAINTAINER Victor Todoran "victorvulpeatodoran@gmail.com"

RUN echo "deb [check-valid-until=no] http://archive.debian.org/debian jessie-backports main" \
    > /etc/apt/sources.list.d/jessie-backports.list && \
    sed -i '/deb http:\/\/deb.debian.org\/debian jessie-updates main/d' /etc/apt/sources.list

# install dependencies
RUN apt-get -o Acquire::Check-Valid-Until=false update && \
    apt-get install -y build-essential sqlite3 libsqlite3-dev

# install mailcatcher
RUN gem install mailcatcher -v 0.7.1 --no-ri --no-rdoc

# cleanup package manager
RUN apt-get remove --purge -y build-essential libsqlite3-dev && \
    apt-get autoclean && apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 1025
EXPOSE 1080

CMD ["mailcatcher", "-f", "--ip=0.0.0.0"]
