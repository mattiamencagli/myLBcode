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
set xrange [ 0.00000 : 5000.00 ] noreverse writeback
set x2range [ 0.00000 : 5000.00 ] noreverse writeback
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
a2 = 0.0399796688848978
b2 = 0.00166681253189183
PI = 3.1415
a3 = 0.0399188733505405
b3 = 0.00166795439199186
a4 = 0.039675945464567
b4 = 0.0016720030488858
a5 = 0.0387070084228886
b5 = 0.00168804544245245
a6 = 0.0346769551437054
b6 = 0.00174218230286863
a7 = 0.0181515022791069
b7 = 0.00178991460097704
FIT_CONVERGED = 1
FIT_NDF = 499
FIT_STDFIT = 0.00019857752938922
FIT_WSSR = 1.9677084553985e-05
FIT_P = 1.0
FIT_NITER = 5
a2_err = 4.45545632367653e-08
b2_err = 1.60957216887804e-07
FIT_ERROR = 0
a3_err = 1.72722603933117e-07
b3_err = 1.58658938085952e-07
a4_err = 7.28546969180746e-07
b4_err = 1.79647995198191e-07
a5_err = 4.16140776863148e-06
b5_err = 3.56050896831484e-07
a6_err = 1.96578566695242e-05
b6_err = 1.40628996455489e-06
a7_err = 7.99255448674645e-05
b7_err = 1.14015791974118e-05
## Last datafile plotted: "maxs.dat"
p 'maxs.dat' u 1:2, 'maxs.dat' u 1:3, 'maxs.dat' u 1:4, 'maxs.dat' u 1:5, 'maxs.dat' u 1:6, 'maxs.dat' u 1:7, f2(x), f3(x), f4(x), f5(x), f6(x), f7(x)
## Last fit command: "fit f7(x) 'maxs.dat' u 1:7 via a7,b7"
#    EOF
