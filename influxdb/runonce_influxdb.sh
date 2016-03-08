#!/bin/bash
service influxdb start

URL="http://localhost:8086"

er=1
while [ $er -ne 0 ]; do
    sleep 1
    curl -k ${URL}/ping 2> /dev/null
    er=$?
    [ $er -ne 0 ] && echo -n .
done
echo

curl -s -G 'http://localhost:8086/query' --data-urlencode "q=CREATE DATABASE grafana"

