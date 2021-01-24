FROM docker.elastic.co/elasticsearch/elasticsearch:7.10.0
MAINTAINER Rodion Kachkin "kyleRQWS@gmail.com"

# install plugins
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install -b \
    https://d3g5vo6xdbdb9a.cloudfront.net/downloads/elasticsearch-plugins/opendistro-sql/opendistro_sql-1.12.0.0.zip

ENTRYPOINT ["/tini", "--", "/usr/local/bin/docker-entrypoint.sh"]
CMD ["eswrapper"]
