reset

set grid
set xlabel 'N'
set ylabel 'time(sec)'
set style fill solid

set key left
set key box

set datafile separator ","
set title 'compute pi time'
set term png enhanced font 'Verdana,10'

set output 'runtime.png'

plot  "result_clock_gettime.csv" using 1:2 title 'baseline' with lines lt rgb "red", \
     "" using 1:3 title 'openmp_2' with lines lt rgb "orange", \
     "" using 1:4 title 'openmp_4' with lines lt rgb "yellow", \
     "" using 1:5 title 'avx' with lines lt rgb "green", \
     "" using 1:6 title 'avxunroll' with lines lt rgb "blue", \
     "" using 1:7 title 'leibniz' with lines lt rgb "purple", \
     "" using 1:8 title 'leibniz_avx' with lines lt rgb "gray", \
     "" using 1:9 title 'leibniz_avxunroll' with lines lt rgb "black", \
     
     