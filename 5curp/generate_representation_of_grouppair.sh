#!/bin/bash

module purge

if [[ "$(hostname)" =~ flow ]];then
    source $/data/group1/z44550r/zkl/util/load_pinter
else
    source $/data/group1/z44550r/zkl/util/load_pinter_ims
fi

set -eu

cd $/data/group1/z44550r/zkl/5curp

if [ -e group_pair/ ]; then mkdir group_pair/; fi

for group_type in "residue" "side"; do
    pinter -i $(find output/$group_type -type f -name group_pair_original.dat) -o output/group_pair/inter_${group_type}.dat
done
