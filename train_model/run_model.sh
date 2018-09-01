#!/bin/bash

# ./run1.sh > $1.list  ;  ./run2.sh > $2.list ; ./run3.sh > $3.list  ; ./run11.sh > $4.list ; ./run12.sh > $5.list ; ./run13.sh > $6.list ; ./run14.sh > $7.list
for i in $@
do
    if [ -e run$i.sh ]
    then
        ./run$i.sh > $i.list &
        # wait
    fi
done

