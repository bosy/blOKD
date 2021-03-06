#!/bin/bash

LOG_FILE="logs/log-$(date -d 'today' +'%Y%m%d-%H%M%S').txt"

./set_power_cap.sh 2>&1 | tee -a $LOG_FILE

mkdir -p logs 2>&1 | tee -a $LOG_FILE

~/xmr-stak/build/bin/xmr-stak --noCPU --log $LOG_FILE --config xmr-stak/config.txt --poolconf xmr-stak/pools.txt --cpu xmr-stak/cpu.txt --amd xmr-stak/amd.txt
