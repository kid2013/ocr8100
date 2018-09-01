
    set datafile sep ','
    set size 1, 1
    set title 'test acc for alnum and chinese'
    set term png size 1500, 1000
    set output '1_test_acc.png'
    set xlabel 'iteration'
    set ylabel 'test_acc'
    plot 'res1.log.test' u 1 : 4 w line t 'test_acc_alnum', \
    '' u 1 : 5 w line t 'test_acc_chinese', \
    '' u 1 : 6 w line t 'alnum_acc'
