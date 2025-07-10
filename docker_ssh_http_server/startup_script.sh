#!/bin/bash

service ssh start

ps -ef

python3 -m http.server 8000

sleep 10000
