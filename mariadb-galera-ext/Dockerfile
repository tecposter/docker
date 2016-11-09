FROM tecposter/mariadb-galera:latest

MAINTAINER "zhanjh@126.com"


RUN set -ex \
&& apt-get update \
&& apt-get upgrade --no-install-recommends --no-install-suggests -y \

&& apt-get install -y --no-install-recommends --no-install-suggests \
    lsof \

&& cd / \
&& rm -rf /usr/local/src/* \
&& apt-get autoremove -y \
&& rm -rf /var/lib/apt/lists/*
