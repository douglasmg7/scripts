#!/usr/bin/env bash

# -F set field separator._
awk -F: '{ print $1, $5 }' /etc/passwd
