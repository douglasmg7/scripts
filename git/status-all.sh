#!/usr/bin/env bash

# Dirs to run git s.
dirs=`cat << EOF
/home/douglasmg7/dotfiles
/home/douglasmg7/txt
/home/douglasmg7/code/scripts
/home/douglasmg7/code/zunkasite
/home/douglasmg7/code/zunkasrv
/home/douglasmg7/code/zunka_util
/home/douglasmg7/code/python
/home/douglasmg7/code/ds
/home/douglasmg7/code/meli_products
/home/douglasmg7/code/snippetbox
/home/douglasmg7/code/gin_rest_api
/home/douglasmg7/code/htmx-course
/home/douglasmg7/code/pydantic_v2
/home/douglasmg7/code/python-fundamentals
/home/douglasmg7/code/fastapi_todo_app
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
