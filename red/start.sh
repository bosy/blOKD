#!/bin/bash

sudo sysctl -w vm.nr_hugepages=128

./set_power_cap.txt

mkdir -p logs

~/xmr-stak/build/bin/xmr-stak --noCPU --h-print-time 60 --log logs/log-$(date -d "today" +"%Y%m%d-%H%M%S").txt --config xmr-stak/config.txt --poolconf xmr-stak/pools.txt --cpu xmr-stak/cpu.txt --amd xmr-stak/amd.txt
