#!/bin/bash

bash get_best_perf.sh $@
title_name=("all_data" "alnum_idcard"  "chinese_idcard" "alnum_icdar" "alnum & chinese" "alnum_180706")
rm *.png
for num in $@
do
    i=res$num.log.test
    idx=$[ $num -1 ]
    if [ -e $i ]
       then
           j=\"$i\"
           echo "
           set datafile sep ','
           set size 1, 1
           set title \"test acc for ${title_name[$idx]}\"
	   set grid
           set term png size 1500, 1000
           set output  \"${num}_test_acc.png\"
           set yr [0.95 : 0.985]
           set xlabel 'iteration'
           set ylabel 'test_acc'
           plot $j  u 1 : 4 w line t \"test acc\" "  | gnuplot
           # eog ${num}_test_acc.png &
           k=\"res$num.log.train\"
           echo "
           set datafile sep ','
           set size 1, 1
           set title \"train acc for ${title_name[$idx]}\"
           set term png size 1500, 1000
           set output  \"${num}_train_acc.png\"
           set yr [0.95 : 1.02]
	   set grid
           set xlabel 'iteration'
           set ylabel 'train_acc'
           plot $k  u 1 : 4 w line t \"train acc\" "  | gnuplot
    fi
done

gnuplot multi_data_viz.pl
