#!/bin/bash
set -u

# Glycine max file (e.g. xxx1110.fasta)
target=Glycine_max
# Other genome, e.g. Glycine_soja
query=$1

cat satsuma0.pbs |
    sed "s/QUERY/$query/" |
    sed "s/TARGET/$target/" > $query.vs.$target.pbs
