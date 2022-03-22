#!/bin/bash

group=$1
end_number=$2

for i in `seq 0 $end_number` ;do
    job_id_seed=$(printf %03d $i)
    job_id=${job_id_seed:0:2}_${job_id_seed:2:1}

    if [ ! -f $/data/group1/z44550r/zkl/6analyse/input/$group/$job_id ];then
        echo $job_id
    fi
done