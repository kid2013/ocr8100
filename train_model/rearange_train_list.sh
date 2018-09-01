#!/bin/bash

awk '{print $0  >> $2}' aug_alnum_0730_train.list
for i in $(seq 0 1 61)
do
    sort -t '/' -k 7 -n   -o $i.tmp $i
    mv $i.tmp $i
done

min=1000000

for i in $(seq 0 1 61)
do
    num=`cat $i | wc -l`
    if [ $min -ge $num ]
    then
        min=$num
    fi
done

for i in $(seq 0 1 61)
do
    sed -i "1, $min!d"  $i
done

a=$(seq 0 1 61)
paste  ${a[*]} > well_placed.list
sed -i "y/\t/\n/" well_placed.list
# sed -i '/^$/, $d' well_placed.list

for i in $(seq 0 1 61)
do
    rm $i
done
