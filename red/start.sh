#!/bin/bash

LOG_FILE="logs/log-$(date -d 'today' +'%Y%m%d-%H%M%S').txt"

sudo sysctl -w vm.nr_hugepages=128

./set_power_cap.txt 2>&1 | tee -a $LOG_FILE

mkdir -p logs 2>&1 | tee -a $LOG_FILE

~/xmr-stak/build/bin/xmr-stak --noCPU --h-print-time 60 --log $LOG_FILE --config xmr-stak/config.txt --poolconf xmr-stak/pools.txt --cpu xmr-stak/cpu.txt --amd xmr-stak/amd.txt
