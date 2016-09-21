#!/bin/bash
set -u

query="Glycine_max"
target=$1

cat satsuma.pbs |
    sed "s/QUERY/$query/" |
    sed "s/TARGET/$target/" > $query.vs.$target.pbs
