#!/usr/bin/env python3
import os

file_dir = '/home/douglasmg7/mnt/DCIM/100CANON'
cr3 = set()
jpg = set()
to_remove = set()

# Get CR3 and JPG files
for filename in os.listdir(file_dir):
    if filename.lower().endswith('cr3'):
        cr3.add(filename[:-4])
    if filename.lower().endswith('jpg'):
        jpg.add(filename[:-4])

# Files to remove
for filename in cr3:
    if filename not in jpg:
        to_remove.add(filename + '.CR3')

# Remove cr3 files without jpg files
print(f'{len(to_remove)} cr3 files will be removed...')
for item in to_remove:
    os.remove(os.path.join(file_dir, item))
    #  print(os.path.join(file_dir, item))