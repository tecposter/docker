FROM tecposter/ubuntu:latest

MAINTAINER "zhanjh@126.com"

# ref. https://github.com/nginxinc/docker-nginx

RUN set -ex \
&& apt-get update \
&& apt-get upgrade --no-install-recommends --no-install-suggests -y \
&& apt-get install -y --no-install-recommends --no-install-suggests \
    libpcre3 openssl libpcre3-dev libssl-dev \
&& build_deps="gcc make build-essential curl" \
&& apt-get install -y $build_deps --no-install-recommends --no-install-suggests \

&& cd /usr/local/src/ \
&& curl -SL "http://nginx.org/download/nginx-1.11.5.tar.gz" -o nginx-1.11.5.tar.gz \
&& tar -zxf nginx-1.11.5.tar.gz \
&& cd nginx-1.11.5 \

&& ./configure \
    --with-http_ssl_module \
    --user=www-data \
    --group=www-data \
    --prefix=/usr/local \
&& make \
&& make install \

&& cd / \
&& rm -rf /usr/local/src/* \
&& rm -rf /var/lib/apt/lists/* \
&& apt-get purge -y --auto-remove $build_deps

EXPOSE 80 443
CMD ["nginx", "-g", "daemon off;"]
