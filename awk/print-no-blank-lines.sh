#!/usr/bin/env bash

awk 'NF > 0 { print $0 }' a.txt
