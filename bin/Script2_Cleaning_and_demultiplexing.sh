#!/bin/bash
## Raquel Hernández Austria Mayo 2020
## Script 2: Cleaning and demultiplexing with programs of Stacks

# From CONABIO`s cluster, go to the raquelha/stacks_tut_small/demo_scripts/ directory
# Create variables with relative paths

raw_dir=../raw/lane1/
barcodes_file=../info/barcodes.lane1.tsv
out_dir=../cleaned/

# Run process_radtags to demultiplex according to your barcode type
process_radtags -p $raw_dir -b $barcodes_file -o $out_dir -e sbfI --inline_null -c -q -r

# Download the .log file to you computer
# For this, make a directory and subdirectories in your computer
mkdir -p Proyecto_final/{bin,data}

# Then, download the .log file to bin directory
# The dot at the end means that the file will be saved in the folder where you are (it should be in bin)
scp -P 45789 cirio@200.12.166.164:/persistence/cirio/raquelha/stacks_tut_small/cleaned/process_radtags.lane1.log .


