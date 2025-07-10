#!/bin/bash

service ssh start
python3 -m http.server 8000 &
ps -ef
sleep 10000
