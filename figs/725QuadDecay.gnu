#set terminal wxt persist #size 350,262 enhanced font 'Verdana,10' persist
#set terminal epslatex size 5.5,4.25 standalone
set terminal epslatex size 5.5,4.25 standalone color colortext 12
set lmargin at screen 0.15
set rmargin at screen 0.90
set bmargin at screen 0.15
set tmargin at screen 0.85
#set output 'tt1.tex'

set output 'tt1.tex'
set xrange [-10.000:1600.000]
set yrange [-51.2:51.20]
set title "Quadrupole Oscillations"
set xlabel "Time (ms)"
set ylabel "Quadrupole Amplitude ($\\mu$m)"
set samples 10000
set palette gray
unset key
# Line width of the axes
 set border linewidth 1.5
# Line styles
#set style line 1 linecolor rgb '#009919' linetype 1 linewidth 2
#set style line 2 linecolor rgb '#e63300' linetype 1 linewidth 2 pt 6
a = 0.9
wx = 18.0427 
ac = 24.8350 
as = 13.1709   
ofs = -0.1986 
A = 1.7760    
gam = 1.3765 

  #v(5)*exp(-v(6)*t/tscl).*(v(2)*cos(2*pi*v(1)*t/tscl)+v(3)*sin(2*pi*v(1)*t/tscl)) + v(4)
f(x) = A*exp(-gam*x/1000)*(ac*cos(2*pi*wx*x/1000)+as*sin(2*pi*wx*x/1000))+ofs
#f(x) = a * sin(x)
#f(x) = 
g(x) = a * cos(x)
#plot f(x) title "Test Plot" with lines
plot f(x) with lines lt 0 lw 3.5, \
     '725singlefits.csv' using 1:2 with lines lt 1 lc 0 lw 2.5, \
     '725quaddata.csv' using 1:2 pt 7 lt 0 ps 2.0
      

     #g(x) notitle with points linestyle 2 
#plot '725quaddata.csv' using 1:2 
     #'' using 1:2 w lines ls 1
