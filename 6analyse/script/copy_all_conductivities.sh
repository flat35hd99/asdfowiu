#!/bin/bash

for i in `seq 0 50`;do
    job_id=$(printf %03d $i)
    run=${job_id:0:2}
    sample=${job_id:2:1}
    for group_type in "inter_residue" "inter_side" "intra_dimer_even" "intra_dimer_odd" "intra_residue" "intra_whole"; do
        cp $/data/group1/z44550r/zkl/5curp/output/$group_type/${run}_${sample}/conductivity.dat \
           $/data/group1/z44550r/zkl/6analyse/input/$group_type/${run}_${sample}
    done
done
