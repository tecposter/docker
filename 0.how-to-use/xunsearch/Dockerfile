FROM tecposter/xunsearch:latest

MAINTAINER "zhanjh@126.com"

COPY docker-entrypoint.sh /usr/local/bin/

VOLUME ["/usr/local/xunsearch/data"]

WORKDIR /usr/local/xunsearch

EXPOSE 8383 8384

RUN ln -s /usr/local/bin/docker-entrypoint.sh /

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["tail", "-f", "tmp/docker.log"]
