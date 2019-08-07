#!/usr/bin/env bash
awk '{s+=$1}END{print s}' nums.txt

