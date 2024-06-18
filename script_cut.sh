#!/bin/bash

cut=32
rm output/ux_cut_${cut}.dat


cutp="${cut}p"

for i in {0..20000..100}
do
	echo "./output/ux${i}.dat"
	sed -n $cutp output/ux${i}.dat >> output/ux_cut_${cut}.dat
done

#con gnuplot, stampa i sin: p 'ux_cut_8.dat' matrix with linespoint
#con gnuplot, stampa il decay: 


#h5dump -d /ux -s "0,0" -S "1,1" -c "128,1" -k "1,1" output0.h5| grep "(*):" | awk '{print $2}' | sed 's/,/ /'
