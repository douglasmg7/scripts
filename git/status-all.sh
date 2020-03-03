#!/usr/bin/env bash

# Dirs to run git s.
dirs=`cat << EOF
/home/douglasmg7/dotfiles
/home/douglasmg7/txt
/home/douglasmg7/code/scripts
/home/douglasmg7/code/zunka
/home/douglasmg7/code/cpp-study
/home/douglasmg7/code/bluetang
/home/douglasmg7/code/bluewhale
/home/douglasmg7/code/go-study
/home/douglasmg7/code/zunka-modules/aldowsc
/home/douglasmg7/code/zunka-modules/aldoutil
/home/douglasmg7/code/zunka-modules/currency
/home/douglasmg7/code/zunka-modules/zunkasrv
/home/douglasmg7/code/zunka-modules/zoomwsc
/home/douglasmg7/code/zunka-modules/zoomproducts
/home/douglasmg7/code/zunka-modules/freightsrv
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
