#set terminal wxt persist #size 350,262 enhanced font 'Verdana,10' persist
#set terminal epslatex size 5.5,4.25 standalone
set terminal epslatex size 4,3 standalone
#set terminal epslatex size 5,4 standalone color colortext 12
#set lmargin at screen 0.15
#set rmargin at screen 0.90
#set bmargin at screen 0.5
#set tmargin at screen 0.85
#set output 'tt1.tex'
#set tmargin 0
#set bmargin 0
#set lmargin 9
#set rmargin 3

#unset xtics
set output 'tt1.tex'
set size 1,1
set xrange [0.000:20.000]
set yrange [0.0:2.00]
set title "" #"Quadrupole Oscillations"
#set xlabel "Time (ms)"
#set ylabel "Quadrupole Amplitude ($\\mu$m)"
set samples 10000
set palette gray
set key left top 
set key samplen 2
#set key samplen 2 spacing .5 font ",3"
#unset key
# Line width of the axes
 set border linewidth 1.5
# Line styles
#set style line 1 linecolor rgb '#009919' linetype 1 linewidth 2
#set style line 2 linecolor rgb '#e63300' linetype 1 linewidth 2 pt 6
#a = 0.9
#wx = 18.0427 
#ac = 24.8350 
#as = 13.1709   
#ofs = -0.1986 
#A = 1.7760    
#gam = 1.3765
#wx2 = 18.2056
#ac2 = 0.4237   
#as2 = -4.8977    
#ofs2 = 0.0107    
#A2 = 0.1654   
#gam2 = -0.5720
#wx2 = 18.1591   
#ac2 = 35.4303   
#as2 = -1.8539   
#ofs2 = -0.0028    
#A2 = 0.3581    
#gam2 = 0.0947
#A2 = -0.0124
#wx2 = 18.1591 
#ac2 = -1025.2
#as2 =  53.6437
#ofs2 = -0.0028
#gam2 = 0.0947
  #v(5)*exp(-v(6)*t/tscl).*(v(2)*cos(2*pi*v(1)*t/tscl)+v(3)*sin(2*pi*v(1)*t/tscl)) + v(4)
#f(x) = A*exp(-gam*x/1000)*(ac*cos(2*pi*wx*x/1000)+as*sin(2*pi*wx*x/1000))+ofs
#g(x) = A2*exp(-gam2*x/1000)*(ac2*cos(2*pi*wx2*x/1000)+as2*sin(2*pi*wx2*x/1000))+ofs2

#f(x) = a * sin(x)
#f(x) = 
#g(x) = a * cos(x)
#plot f(x) title "Test Plot" with lines
#plot f(x) with lines lt 0 lw 3.5, \
     #'725singlefits.csv' using 1:2 with lines lt 1 lc 0 lw 2.5, \
     #'725quaddata.csv' using 1:2 pt 7 lt 0 ps 2.0
      
#set multiplot layout 3, 1 title ""
#set key autotitle column nobox samplen 1 noenhanced
#unset title
#set style data boxes
#unset title
#set title "test"
#set size 0.5,0.49
#set ylabel "{\\fontsize{5cm}{1em} Damping Rate (s$^{-1}$)}"
set ylabel "\\makebox[4in][c]{\\fontsize{12}{11}\\selectfont~Damping Rate (s$^{-1}$)}"
#set ylabel font "Verdana,18"
set xlabel "\\makebox[4in][c]{\\fontsize{12}{11}\\selectfont~Collision Rate (s$^{-1}$)}"
     set tics scale 1 font ",8" 
     #set xtics format " "

plot 'quaddamp.csv' using 1:2:3 with yerrorbars pt 5 lt 1 ps 2.0 title "Monopole", \
     'quaddamp.csv' using 1:4:5 with yerrorbars pt 7 lt 1 ps 2.0 title "Quadrupole"
#plot 'quaddamp.csv' using 1:2:3 with yerrorbars pt 5 lt 1 ps 2.0 title "test", \
     #'quaddamp.csv' using 1:4:5 with yerrorbars pt 7 lt 1 ps 2.0 title "test" 

#set size 0.5,0.39
     #set xtics nomirror
#unset xtics
#set xtics format "$%g$"
     #set tics scale 1 font ",8"
     #set xlabel "Time (ms)\n"
#set ylabel "Monopole Amplitude ($\\mu$m)"
#set yrange [-14.9:14.90]
#
#plot g(x) with lines lt 0 lw 6.5, \
     #'725breathedata.csv' using 1:2 pt 7 lt 0 ps 2.0
     ##'725singlefits.csv' using 1:2 with lines lt 1 lc 0 lw 2.5, \
     ##set size 0.2,0.5
#unset multiplot
     #g(x) notitle with points linestyle 2 
#plot '725quaddata.csv' using 1:2 
     #'' using 1:2 w lines ls 1
