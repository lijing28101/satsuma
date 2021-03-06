#!/bin/bash
set -u

# Glycine max file (e.g. xxx1110.fasta)
target=$1
# Other genome, e.g. Glycine_soja
query=$2

cat satsuma-single.pbs |
    sed "s/QUERY/$query/" |
    sed "s/TARGET/$target/" > $query.vs.$target.pbs
