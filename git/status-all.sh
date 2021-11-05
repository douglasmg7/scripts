#!/usr/bin/env bash

# Dirs to run git s.
dirs=`cat << EOF
/home/douglasmg7/dotfiles
/home/douglasmg7/txt
/home/douglasmg7/code/scripts
/home/douglasmg7/code/c
/home/douglasmg7/code/cpp-study
/home/douglasmg7/code/go-study
/home/douglasmg7/code/rust-study
/home/douglasmg7/code/zunkasite
/home/douglasmg7/code/bluetang
/home/douglasmg7/code/bluewhale
/home/douglasmg7/code/aldowsc
/home/douglasmg7/code/aldoutil
/home/douglasmg7/code/currency
/home/douglasmg7/code/zunkasrv
/home/douglasmg7/code/zoomwsc
/home/douglasmg7/code/zoomproducts
/home/douglasmg7/code/freightsrv
/home/douglasmg7/code/allnations
/home/douglasmg7/code/boat_plan
/home/douglasmg7/code/canvas
/home/douglasmg7/code/ws
/home/douglasmg7/code/webserver
/home/douglasmg7/code/zunka_util
/home/douglasmg7/code/flask-by-example
/home/douglasmg7/code/python
/home/douglasmg7/code/data_science
/home/douglasmg7/code/meli_products
/home/douglasmg7/code/handytech
/home/douglasmg7/code/trader
/home/douglasmg7/code/motospeed
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
