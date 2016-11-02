FROM tecposter/php7:latest

MAINTAINER "zhanjh@126.com"

# https://github.com/phpredis/phpredis
# https://github.com/swoole/swoole-src


RUN set -ex \
&& apt-get update \
&& apt-get upgrade --no-install-recommends --no-install-suggests -y \

&& build_deps="git gcc make build-essential cmake ca-certificates autoconf" \
&& apt-get install -y --no-install-recommends --no-install-suggests \
    $build_deps \

&& cd /usr/local/src/ \
&& git clone https://github.com/phpredis/phpredis phpredis \
&& cd phpredis \
&& git checkout php7 \

&& phpize \
&& ./configure \
&& make \
&& make install \

&& cd /usr/local/src/ \
&& git clone https://github.com/swoole/swoole-src.git \
&& cd swoole-src \

&& phpize \
&& ./configure \
&& make \
&& make install \

&& cd / \
&& rm -rf /var/lib/opt/lists/* \
&& rm -rf /usr/local/src/* \

&& apt-get purge -y --auto-remove $build_deps \
&& apt-get autoremove -y
