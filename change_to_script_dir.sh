#! /usr/bin/env bash
# Make the script directory the current directory, instead the directory where the script was called.
# To understand the use of `dirname $0` call this script from other directory.
echo '$0'
echo $0
echo
PWD_TEMP=`pwd`
echo current directory
pwd
echo
echo dirname '$0'
echo `dirname $0`
echo
cd `dirname $0`
echo 'current directory befor "cd dirname $0"'
echo $PWD_TEMP
echo
echo 'current directory after "cd dirname $0"'
pwd

