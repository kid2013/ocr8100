#!/bin/bash

src=$1
shift
for i in $@
do
    mkdir -p log$i/201807 snap_shot$i
    cp run$src.sh  run$i.sh
    cp solver$src.prototxt solver$i.prototxt
    cp train$src.prototxt  train$i.prototxt

    sed -i "\$s/solver$src/solver$i/;  s/log$src/log$i/; \$s/res$src/res$i/" run$i.sh
    sed -i "/^net/s/train$src/train$i/; /prefix/s/snap_shot$src/snap_shot$i/ " solver$i.prototxt
   dos2unix run$i.sh solver$i.prototxt train$i.prototxt
    echo set gpu ord!
done
