# Proyecto_Bionf2020
This repository contains the Bioinformatica´s final project

## README
This readme contains scripts for download data used by Rochette, N.C. & Catchen, J.M. (2017) and analyze it with **FastQC**, as well as, the `process_rad_tags program` of **Stacks**, and with the program **RStudio** for analyses and plotting. 

Scripts content:

### `/bin/`
The scripts in `/bin` should be run in the order they are numbered. This scripts were run in Universidad de Chile´cluster, in the CONABIO´s cluster, and in my computer. Html notebook is provided for the analyses in R.

*`Script1_Quality_control_with_FastQC.sh` downloads the data from http://catchenlab.life.illinois.edu/data/rochette2017_gac_or.tar.gz, and analyze all the FASTQ format and gzip-compressed files con **FastQC** software (a quality control tool for high throughput sequence data). Finally, permits download the data to your computer.

*`Script2_Cleaning_and_demultiplexing.sh` cleans and demultiplexes raw data from lane 1 according to the barcode type. Then, downloads the generated files to your computer.

*`Script3__Extract_number_of_reads.sh` extracts the number of reads by sample from the log file, and allows saved it in a tsv file.

*`Script4_Plot_number_of_reads.R` plots number of reads by sample. 

A html report was created with the `Script4_Plot_number_of_reads.R`; the name of this report is Report_Script4_Number_of_reads_by_sample.html

### `/data/`
The used working data were the used by Rochette, N.C. & Catchen, J.M. (2017). Deriving genotypes from RAD-seq short-read data using Stacks. Nature Protocols 12, 2640–2659, which were download from http://catchenlab.life.illinois.edu/data/rochette2017_gac_or.tar.gz. This data are contained in three lanes; I only used the data from the lane 1.

The original data corresponds to a three-spined stickleback (*Gasterosteus aculeatus*) data set published by Catanchen et al. (2013). The population structure and recent colonization history of Oregon threespine stickleback determined using restriction-site associated DNA-sequencing. Molecular Ecology 22, 2864–2883. This demonstration data set comprises 78 samples from four populations along the coast of Oregon (USA), of which two are oceanic (Cushman Slough: cs) and South Jetty: sj), and two are freshwater (Winchester Creek: wc and Pony Creek Reservoir: pcr). The RAD-seq library was prepared using inline barcodes, and it was sequenced on a HiSeq 2000 platform with a read length of 101 bp.

### `/meta/`
Contains both barcodes_lane1.tsv and the popmap.tsv files, with two columns separate by a tab each one. The first column of barcodes.lane1.tsv show the barcode type with 6 base pairs (bp), following of the sample name (second column); sj refers to South Jetty. The popmap.tsv file, first contains the sample name, following of the population name (Cushman Slough: cs, South Jetty: sj, Winchester Creek: wc, and Pony Creek Reservoir: pcr).    


