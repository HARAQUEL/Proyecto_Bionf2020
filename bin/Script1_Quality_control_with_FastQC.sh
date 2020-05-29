#!/bin/bash
## Raquel Hernández Austria Mayo 2020
## Script 1: Quality control of reads with FastQC

# Preliminaries: Preparing directories
# Make a directory named Proyecto_final on raquelha directory from the UChile`s cluster.
mkdir Proyecto_final

# Download data in Proyecto_final
wget http://catchenlab.life.illinois.edu/data/rochette2017_gac_or.tar.gz

# Decompress data
tar -xzvf rochette2017_gac_or.tar.gz

# Review all directories and subdirectories downloaded; on "raw" directory are the raw sequencing data. 
# We will only review the quality control of lane1`s reads
# Within "top" directory, make two subdirectories
mkdir bin
mkdir fastq_raw

# From bin, evaluate the quality of lane1`s reads with Fastqc
# Asterisk before .fq.gz means that it will be analyzed all the FASTQ format and gzip-compressed files; there are ten samples in the lane 1.
/opt/fastQC_v0.11.2/FastQC/fastqc ../raw/lane1/*.fq.gz -o ../fastq_raw

# .html and .zip files are generated; download these files to your computer to assess the quality of the reads
# Asterisk after lane1 means that it will download all the compress files
# For this, you will be create a directory named "Proyecto_final", and inside create one subdirectory: "data"
# The files will be download within data
scp bioinfo1@genoma.med.uchile.cl:/home/bioinfo1/raquelha/Proyecto_final/rochette2017_gac_or/top/fastq_raw/lane1* .


