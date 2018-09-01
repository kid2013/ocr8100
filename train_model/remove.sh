#!/bin/bash

for i in $@
do
    rm  -fr log$i snap_shot$i
    rm res$i.log* run$i.sh solver$i.prototxt train$i.prototxt
done




