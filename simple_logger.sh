#! /bin/bash

# to run: ./simple_logger.sh

RANDOM=$RANDON

# -i for get the PID
# -s for echo the log on console
# -p to pass the facilities and severity (for this example user.info)
# -t for tag the log

logger -t testScript -s -i -p user.info "THE RANDON NUMBER IS ${RANDON}"
