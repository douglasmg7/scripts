#!/usr/bin/env bash

# Dirs to run git s.
dirs=`cat << EOF
/home/douglasmg7/dotfiles
/home/douglasmg7/txt
/home/douglasmg7/code/scripts
/home/douglasmg7/code/zunka
/home/douglasmg7/code/cpp-study
/home/douglasmg7/code/golang/src/github.com/douglasmg7/aldowsc
/home/douglasmg7/code/golang/src/github.com/douglasmg7/aldoutil
/home/douglasmg7/code/golang/src/github.com/douglasmg7/bluetang
/home/douglasmg7/code/golang/src/github.com/douglasmg7/bluewhale
/home/douglasmg7/code/golang/src/github.com/douglasmg7/currency
/home/douglasmg7/code/golang/src/github.com/douglasmg7/go-study
/home/douglasmg7/code/golang/src/github.com/douglasmg7/zunkasrv
/home/douglasmg7/code/golang/src/github.com/douglasmg7/zoomwsc
/home/douglasmg7/code/golang/src/github.com/douglasmg7/zoomproducts
/home/douglasmg7/code/golang/src/github.com/douglasmg7/freightsrv
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
