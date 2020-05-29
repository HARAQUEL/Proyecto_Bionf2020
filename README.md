# Proyecto_Bionf2020
This repository contains the Bioinformatica`s final project

## README
This readme contains scripts for download data used by Rochette, N.C. & Catchen, J.M. (2017) and analyze it with **FastQC**, as well as, the `process_rad_tags program of **Stacks**, and with the program **RStudio** for analyses and plotting. 

Scripts content:

### `/bin/`
The scripts in `/bin` should be run in the order they are numbered. The scripts were run in Universidad de Chile`cluster, in the CONABIO`s cluster, and in my computer. Html notebook is provided for the analyses in R.

*`Script1_Quality_control_with_FastQC.sh` downloads the data from http://catchenlab.life.illinois.edu/data/rochette2017_gac_or.tar.gz, and analyze all the FASTQ format and gzip-compressed files con **FastQC** software (a quality control tool for high throughput sequence data). Finally, permits download the data to your computer.

*`Script2_Cleaning_and_demultiplexing.sh` cleans and demultiplexes raw data from lane 1 according to the barcode type. Then, downloads the generated files to your computer.

*`Script3__Extract_number_of_reads.sh` extracts the number of reads by sample from the log file, and allows saved it in a tsv file.


###  `/data/`
The used working data were the used by Rochette, N.C. & Catchen, J.M. (2017). Deriving genotypes from RAD-seq short-read data using Stacks. Nature Protocols 12, 2640–2659, which were download from http://catchenlab.life.illinois.edu/data/rochette2017_gac_or.tar.gz. 
The original data corresponds to a three-spined stickleback (*Gasterosteus aculeatus*) data set published by Catanchen et al. (2013). The population structure and recent colonization history of Oregon threespine stickleback determined using restriction-site associated DNA-sequencing. Molecular Ecology 22, 2864–2883. This demonstration data set comprises 78 samples from four populations along the coast of Oregon (USA), of which two are oceanic ('Cushman Slough' (CS) and 'South Jetty' (SJ)) and two are freshwater ('Winchester Creek' (WC) and 'Pony Creek Reservoir' (PCR)). The RAD-seq library was prepared using inline barcodes, and it was sequenced on a HiSeq 2000 platform with a read length of 101 bp.


### `/meta/`


