#!/usr/bin/env bash

# Dirs to run git s.
dirs=`cat << EOF
/home/dmg/dotfiles
/home/dmg/txt
/home/dmg/code/scripts
/home/dmg/code/zunkasite
/home/dmg/code/zunkasrv
/home/dmg/code/zunka_util
/home/dmg/code/python
/home/dmg/code/data_science
/home/dmg/code/meli_products
EOF`

for path in $dirs
do
    cd $path
    result=$(git s `pwd`)
    if [[ -n $result ]]; then
        pwd
        echo $result
        echo
    fi
done
