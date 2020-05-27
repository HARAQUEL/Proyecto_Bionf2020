#!/bin/bash
## Raquel Hernández Austria
## Script 1: Quality control with FastQC

# Preliminaries: Preparing directories
# Make a directory with subdirectories on raquelha directory in UChile`s cluster.

mkdir - p Proyecto_final/{bin,data,fastq_raw}

# From the bin directory, copy stacks_tut_small/raw/lane1/lane1_NoIndex_L001_R1_001.fq.gz to “data” directory from CONABIO`s cluster

scp -r -P 45789 cirio@200.12.166.164:/persistence/cirio/raquelha/stacks_tut_small/raw/lane1/lane1_NoIndex_L001_R1_001.fq.gz data

# Evaluate the quality of the reads with Fastqc

fastqc ../data/lane1_NoIndex_L001_R1_001.fq.gz -o fastq_raw

fastqc ../data/lane1_NoIndex_L001_R1_002.fq.gz -o fastq_raw

