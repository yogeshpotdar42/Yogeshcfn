#!/bin/bash

filename=$1
for i in 1 2 3 4; do 
	#[ -f $filename$i ] && rm -f $filename$i
	if [ -f $filename$i ]; then
	rm -f $filename$i
	fi
	
    echo $RANDOM >> $filename$i

done	