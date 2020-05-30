#!/bin/bash
## Raquel Hernández Austria Mayo 2020
## Extract the number of reads from the log file of process_radtags

# On your computer, go to the Proyecto_final directory
# From bin, retrieve the part of the log between 'Barcode...' and the next empty line
sed -n '/^Barcode\tFilename\t/,/^$/ p' ../data/process_radtags.lane1.log >> n_reads_per_sample.tsv | mv n_reads_per_sample.tsv ../data

#Your file are ready to make plots in R!
