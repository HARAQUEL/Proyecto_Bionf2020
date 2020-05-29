# Proyecto_Bionf2020
This repository contains the Bioinformatica`s final project

## README
This readme contains scripts for download fata fron Rochete & (2017) use **FastQC**, as well as, the `process_rad_tags program of **Stacks**, and **RStudio** scrits used for analyses and plotting. 

Scripts content:

### `/bin/`
The scripts in `/bin` should be run in the order they are numbered. The scripts were run in Universidad de Chile`cluster, in the CONABIO`s cluster, and in my computer. Html notebook is provided for the analyses in R.

*`Script1_Quality_control_with_FastQC.sh` downloads the data from http://catchenlab.life.illinois.edu/data/rochette2017_gac_or.tar.gz, and analyze all the FASTQ format and gzip-compressed files con **FastQC** (a quality control tool for high throughput sequence data). Finally, permits download the data to your computer.

*`Script2_Cleaning_and_demultiplexing.sh` cleans and demultiplexes raw data from lane 1 according to the barcode type. Then, downloads the generated files to your computer.

*`Script3__Extract_number_of_reads.sh` extracts 
