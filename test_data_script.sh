#!/bin/bash

echo "my.graphite.testevent:1|c" | nc -u -w0 127.0.0.1 8125

