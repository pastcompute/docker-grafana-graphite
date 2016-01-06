#!/bin/bash

function do_stuff() {
sleep 30
date > /tmp/blah
echo "my.graphite.testevent:1|c" | nc -u -w0 127.0.0.1 8125
}

do_stuff > /dev/null 2>&1  &
