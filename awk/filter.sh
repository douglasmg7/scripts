#!/usr/bin/env bash

# Set fild separator for ",".
awk -F, '/MA/ { print $1 }' list
