#!/usr/bin/env bash

awk -F: '{ printf "User %s is really %s\n", $1, $5 }' /etc/passwd
