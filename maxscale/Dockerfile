FROM tecposter/ubuntu:latest

MAINTAINER "zhanjh@126.com"

# https://mariadb.com/kb/en/mariadb-enterprise/5929/
# https://mariadb.com/kb/en/mariadb-enterprise/building-mariadb-maxscale-from-source-code/

RUN set -ex \
&& apt-get update \
&& apt-get upgrade -y --no-install-recommends --no-install-suggests \

&& apt-get install -y --no-install-recommends --no-install-suggests \
    libssl-dev libaio-dev ncurses-dev bison flex perl \
    libtool libcurl4-openssl-dev libpcre3-dev tcl tcl-dev uuid \
    uuid-dev \

&& build_deps="git gcc make build-essential cmake ca-certificates" \
&& apt-get install -y --no-install-recommends --no-install-suggests \
    $build_deps \

&& cd /usr/local/src/ \
&& git clone https://github.com/mariadb-corporation/MaxScale \
&& mkdir build \
&& cd build \
&& cmake ../MaxScale -DBUILD_TESTS=Y \
&& make \
&& make install \

&& cd / \
&& rm -rf /var/lib/apt/lists/* \
&& rm -rf /usr/local/src/* \
&& apt-get purge -y --auto-remove $build_deps
