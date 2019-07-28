#!/usr/bin/env bash

# -t field separator.
# -k1.2,3.4 compares start from second character from first filed to fourth character from third.
# n field as a number.
# r reverse.
sort -t: -k3nr /etc/passwd