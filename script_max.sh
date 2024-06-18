#!/bin/bash

rm maxs.dat

for i in {0..5000..10}
do
	echo -n "$i " >> maxs.dat 
	for dir in 128 64 32 16 8 4
	do
		head -n 1 ./lambda${dir}/ux${i}.dat | rs -T | awk 'BEGIN{max=0}{if($1>max) max=$1}END{printf "%g ",max}' >> maxs.dat
	done
	echo " " >> maxs.dat
done
