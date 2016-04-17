#!/bin/bash

while [ 1 ]; do
echo $signal
#Receiver
signal=`rigctl  -m 2 -r localhost:4532 l STRENGTH`
if [ $signal -gt -45 ]
then
echo "Signal detected "$signal
#Transmeter Config ip and port
rigctl -m 2 -r localhost:4533 T 1
else 
rigctl -m 2 -r localhost:4533 T 0
fi
sleep .2
done
