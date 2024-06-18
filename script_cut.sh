#/bin/bash

rm output/ux_cut.dat

for i in {0..20000..200}
do
	echo "./output/ux${i}.dat"
	awk '{print $1}' output/ux${i}.dat | rs -T >> output/ux_cut.dat
done

#con gnuplot, stampa i sin: p 'ux_cut_8.dat' matrix with linespoint

#h5dump -d /ux -s "0,0" -S "1,1" -c "128,1" -k "1,1" output0.h5| grep "(*):" | awk '{print $2}' | sed 's/,/ /'
