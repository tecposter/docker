#!/bin/bash

set -ex

cd /usr/local/xunsearch

rm -f tmp/pid.* \

bin/xs-indexd -l tmp/docker.log -b 0.0.0.0:8383 -k restart

sleep 1

bin/xs-searchd -l tmp/docker.log -b 0.0.0.0:8384 -k restart

sleep 1

set -- "$@"
exec "$@"
