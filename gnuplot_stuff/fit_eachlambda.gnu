#!/usr/bin/gnuplot
#
#    
#    	G N U P L O T
#    	Version 6.0 patchlevel 0    last modified 2023-12-09 
#    
#    	Copyright (C) 1986-1993, 1998, 2004, 2007-2023
#    	Thomas Williams, Colin Kelley and many others
#    
#    	gnuplot home:     http://www.gnuplot.info
#    	faq, bugs, etc:   type "help FAQ"
#    	immediate help:   type "help"  (plot window: hit 'h')
# set terminal qt 0 font "Sans,10"
# set output
unset clip points
set clip one
unset clip two
unset clip radial
set errorbars front 1.000000 
set border 31 front lt black linewidth 1.000 dashtype solid
set cornerpoles
set zdata 
set ydata 
set xdata 
set y2data 
set x2data 
set boxwidth
set boxdepth 0
set style fill  empty border
set style rectangle back fc  bgnd fillstyle   solid 1.00 border lt -1
set style circle radius graph 0.02 
set style ellipse size graph 0.05, 0.03 angle 0 units xy
set dummy x, y
set format x "% h" 
set format y "% h" 
set format x2 "% h" 
set format y2 "% h" 
set format z "% h" 
set format cb "% h" 
set format r "% h" 
set ttics format "% h"
set timefmt "%d/%m/%y,%H:%M"
set angles radians
set tics back
unset grid
unset raxis
set theta counterclockwise right
set style parallel front  lt black linewidth 2.000 dashtype solid
set key notitle
set key fixed right top vertical Right noreverse enhanced autotitle nobox
set key noinvert samplen 4 spacing 1 width 0 height 0
set key maxcolumns 0 maxrows 0
set key noopaque
unset label
unset arrow
unset style line
unset style arrow
set style histogram clustered gap 2 title textcolor lt -1
unset object
unset walls
set style textbox  transparent margins  1.0,  1.0 border  lt -1 linewidth  1.0
set offsets 0, 0, 0, 0
set pointsize 1
set pointintervalbox 1
set encoding default
unset parametric
unset polar
unset spiderplot
unset decimalsign
unset micro
unset minussign
set view 60, 30, 1, 1
set view azimuth 0
set rgbmax 255
set samples 100, 100
set isosamples 10, 10
set surface implicit
set surface
set mapping cartesian
set datafile separator whitespace
set datafile nocolumnheaders
unset hidden3d

unset contour
set cntrlabel  format '%8.3g' font '' start 5 interval 20
set cntrparam order 4
set cntrparam linear
set cntrparam levels 5
set cntrparam levels auto
set cntrparam firstlinetype 0 unsorted
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
set contourfill auto 5
set contourfill palette
set style data points
set style function lines
unset xzeroaxis
unset yzeroaxis
unset zzeroaxis
unset x2zeroaxis
unset y2zeroaxis
set xyplane relative 0.5
set tics scale  1, 0.5, 1, 1, 1
set mxtics default
set mytics default
set mztics default
set mx2tics default
set my2tics default
set mcbtics default
set mrtics default
set nomttics
set xtics border in scale 1,0.5 mirror norotate  autojustify
set xtics  norangelimit autofreq 
set ytics border in scale 1,0.5 mirror norotate  autojustify
set ytics  norangelimit logscale autofreq 
set ztics border in scale 1,0.5 nomirror norotate  autojustify
set ztics  norangelimit autofreq 
unset x2tics
unset y2tics
set cbtics border in scale 1,0.5 mirror norotate  autojustify
set cbtics  norangelimit autofreq 
set rtics axis in scale 1,0.5 nomirror norotate  autojustify
set rtics  norangelimit autofreq 
unset ttics
set title "" 
set title  font "" textcolor lt -1 norotate
set timestamp bottom 
set timestamp "" 
set timestamp  font "" textcolor lt -1 norotate
set trange [ * : * ] noreverse nowriteback
set urange [ * : * ] noreverse nowriteback
set vrange [ * : * ] noreverse nowriteback
set xlabel "" 
set xlabel  font "" textcolor lt -1 norotate
set x2label "" 
set x2label  font "" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set ylabel "" 
set ylabel  font "" textcolor lt -1 rotate
set y2label "" 
set y2label  font "" textcolor lt -1 rotate
set yrange [ 1.00000e-16 : 0.100000 ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zlabel "" 
set zlabel  font "" textcolor lt -1 norotate
set zrange [ * : * ] noreverse writeback
set cblabel "" 
set cblabel  font "" textcolor lt -1 rotate
set cbrange [ * : * ] noreverse writeback
set rlabel "" 
set rlabel  font "" textcolor lt -1 norotate
set rrange [ * : * ] noreverse writeback
unset logscale
set logscale y 10
unset jitter
set zero 1e-08
set lmargin  -1
set bmargin  -1
set rmargin  -1
set tmargin  -1
set locale "en_US.UTF-8"
set pm3d explicit at s
set pm3d scansautomatic
set pm3d interpolate 1,1 flush begin noftriangles noborder corners2color mean
set pm3d clip z 
set pm3d nolighting
set palette positive nops_allcF maxcolors 0 gamma 1.5 color model RGB 
set palette rgbformulae 7, 5, 15
set colorbox default
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
set style boxplot candles range  1.50 outliers pt 7 separation 1 labels auto unsorted
set chi_shapes fraction 0.60
set loadpath 
set fontpath
set psdir
set fit brief errorvariables nocovariancevariables errorscaling prescale nowrap v5
f2(x)=a2*exp(-b2*x*(2*PI/128)*(2*PI/128))
f3(x)=a3*exp(-b3*x*(4*PI/128)*(4*PI/128))
f4(x)=a4*exp(-b4*x*(8*PI/128)*(8*PI/128))
f5(x)=a5*exp(-b5*x*(16*PI/128)*(16*PI/128))
f6(x)=a6*exp(-b6*x*(32*PI/128)*(32*PI/128))
f7(x)=a7*exp(-b7*x*(64*PI/128)*(64*PI/128))
GNUTERM = "qt"
I = {0.0, 1.0}
VoxelDistance = 0.0
GridDistance = 0.0
a2 = 0.0399719001175552
b2 = 0.166676510523102
PI = 3.1415
a3 = 0.0398876992484999
b3 = 0.166676472721311
a4 = 0.0395524298781942
b4 = 0.166676022831764
a5 = 0.0382359834624659
b5 = 0.166669125786665
a6 = 0.0333472036097648
b6 = 0.166552008447342
a7 = 0.0188562
b7 = 0.164338556274009
FIT_CONVERGED = 1
FIT_NDF = 0
FIT_STDFIT = 0 #inf.0
FIT_WSSR = 2.93873587705572e-39
FIT_P = 0 #NaN
FIT_NITER = 9
a2_err = 3.32230286478286e-09
b2_err = 2.22583946514721e-08
FIT_ERROR = 0
a3_err = 3.14444685218322e-09
b3_err = 1.87457269154885e-08
a4_err = 8.99183723708247e-09
b4_err = 5.72959066208463e-08
a5_err = 1.70402477441286e-08
b5_err = 1.22873865972611e-07
a6_err = 2.11354426290404e-08
b6_err = 2.387298318611e-07
a7_err = 2e-6 #inf.0
b7_err = 2e-6 #inf.0
## Last datafile plotted: "maxs.dat"
p 'maxs.dat' u 1:2, 'maxs.dat' u 1:3, 'maxs.dat' u 1:4, 'maxs.dat' u 1:5, 'maxs.dat' u 1:6, 'maxs.dat' u 1:7, f2(x), f3(x), f4(x), f5(x), f6(x), f7(x)
## Last fit command: "fit [0:10] f7(x) 'maxs.dat' u 1:7 via a7,b7"
#    EOF
