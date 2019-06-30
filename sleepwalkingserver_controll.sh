#! /bin/bash

# ro run ./sleepwalkingserver_controll.sh start
# ro run ./sleepwalkingserver_controll.sh stop

case "$1" in
"start" | "START")
    ./aux_files/sleep-walking-server &
    ;;
"stop" | "STOP")
    kill $(cat /tmp/sleepwalkingserver.pid)
    ;;
*)
    echo "Usage $0 start | stop";
    exit 1;
esac
