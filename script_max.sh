#!/bin/bash

rm maxs.dat

dir0=lambdas_tau0_505/

for i in {0..5000..10}
do
	echo -n "$i " >> maxs.dat 
	for dir in 128 64 32 16 8 4
	do
			awk 'BEGIN{max=0}{if($1>max) max=$1}END{printf "%g ",max}' ${dir0}lambda${dir}/ux${i}.dat >> maxs.dat
	done
	echo " " >> maxs.dat
done
