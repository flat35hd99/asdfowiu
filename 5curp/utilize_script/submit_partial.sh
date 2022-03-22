#!/bin/bash

prefix=$/data/group1/z44550r/zkl

if [ -z "$2" ];then echo "check arguments";exit 1; fi

group_pair=$1
ids="${@:2}"

for id in $ids ;do
    pjsub -N ytva_curp_${group_pair}_${id} \
        -x "group_pair=${group_pair},PJM_BULKNUM=${id}" \
        $prefix/5curp/job.sh
done
