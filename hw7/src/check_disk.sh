#!/bin/bash

HARD=$1

USAGE=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$USAGE" -gt "$HARD" ]; then
    echo "$(date): Внимание! Диск заполнен на  ${USAGE}%" >> /var/log/disk.log
fi
