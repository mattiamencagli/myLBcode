#!/bin/bash

rm maxs.dat

for i in {0..20000..400}
do
	head -n 1 ux${i}.dat | rs -T | awk -v t=$i 'BEGIN{max=0}{if($1>max) max=$1}END{print t, max} ' >> maxs.dat
done
