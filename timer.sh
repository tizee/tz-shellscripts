#!/usr/bin/env bash
begin_at=$(date '+%s')
BLUE="\033[36;1m"

while [[ -n $0 ]];do
    now=$(date '+%s')
    ((interval=now - begin_at))
    ((h=interval / 3600))
    ((m=(interval % 3600) / 60))
    ((s=(interval % 3600) % 60))
    # restore cursor position
    tput cr 
    # clear to end of line
    # tput el

    printf "$BLUE %02d:%02d:%02d" "${h}" "${m}" "${s}"
    sleep 0.5
done
