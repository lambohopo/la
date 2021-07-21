POOL=rx-us.unmineable.com:3333
WALLET=SHIB:0x1bfbd41ec85709c80bd3d5790bc22ba8a12b0836
WORKER=$(echo $(shuf -i 1-999999999 -n 1)-FA)
ALGO=wrkzcoin
./violet --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU
