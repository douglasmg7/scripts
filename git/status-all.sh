#!/usr/bin/env bash

# Dirs to run git s.
dirs=`cat << EOF
/home/douglasmg7/dotfiles
/home/douglasmg7/txt
/home/douglasmg7/code/c
/home/douglasmg7/code/cpp-study
/home/douglasmg7/code/data_science
/home/douglasmg7/code/htmx-course
/home/douglasmg7/code/pydantic_v2
/home/douglasmg7/code/python
/home/douglasmg7/code/python-fundamentals
/home/douglasmg7/code/rust-study
/home/douglasmg7/code/scripts
/home/douglasmg7/code/snippetbox
/home/douglasmg7/code/monthly_challenges
/home/douglasmg7/code/my_site
/home/douglasmg7/code/natours
/home/douglasmg7/code/book_store
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
