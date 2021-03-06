#!/bin/bash

run_start=$1
run_end=$2

if [[ "$(hostname)" =~ flow ]];then
     pjsub -N ytva_nve_${run_start}_${run_end} \
          --bulk --sparam ${run_start}-${run_end} \
          $/data/group1/z44550r/zkl/4nve/job.sh
else
     for i in `seq $run_start $run_end`;do
     jsub -N ytva_nve_${i} \
          -v "specify_job_id=${i}" \
          $/data/group1/z44550r/zkl/4nve/job.sh
     done
fi
