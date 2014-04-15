set grid ytics

#set boxwidth 0.9
set size 1.2, 0.5
set style data histogram
set style fill pattern border -1
set style histogram cluster gap 1

#set xlabel "Number of drones"
set ylabel "%"
# set xrange [0:8]
set yrange [0:3]

#set bmargin 7
#set tmargin 7

set output "memory_overhead.eps"
set terminal postscript eps enhanced "Helvetica" 21
plot "memory_overhead.data" using 2 ti "Binary overhead",\
     "" using 3:xtic(1) ti "RAM overhead" 
