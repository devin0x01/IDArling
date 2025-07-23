#!/bin/bash

ps aux|grep "python.*idarling_server"|awk '{print $2}'|xargs -i sudo kill {}

if [ $# -eq 0 ]; then
    sudo nohup python3 ./idarling_server.py -h 10.21.24.15 --no-ssl --level DEBUG 2>&1 | tee -i idarling.log &
fi