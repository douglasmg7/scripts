#!/usr/bin/env bash

# -v set awk's variables.
awk -v 'OFS==' '{ print $1, $2, $3 }' a.txt
