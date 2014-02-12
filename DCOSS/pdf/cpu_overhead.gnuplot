set grid ytics

#set boxwidth 0.9
set size 1.2, 0.5
set style data histogram
set style fill pattern border -1
set style histogram cluster gap 1

#set xlabel "Number of drones"
set ylabel "CPU cycles"
# set xrange [0:8]
#set yrange [0:35]

#set bmargin 7
#set tmargin 7

set output "cpu_overhead.eps"
set terminal postscript eps enhanced "Helvetica" 21
plot "cpu_overhead.data" using 2 ti "Context transition overhead",\
     "" using 3:xtic(1) ti "Function call overhead" 
