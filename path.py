#!/usr/bin/env python3

import os

for item in set(os.environ['PATH'].split(':')):
    print(item)