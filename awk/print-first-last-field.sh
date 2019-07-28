#!/usr/bin/env bash

awk '{ print "First->" $1, "Last->" $NF }' a.txt
