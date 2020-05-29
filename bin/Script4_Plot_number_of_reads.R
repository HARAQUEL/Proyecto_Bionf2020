## Raquel Hernández Austria Mayo 2020

## Plot number of reads by sample

# We will use the `n_reads_per_sample.tsv` file saved in data; this file was created with the Script 3
# Your working directory must be bin, where you should save this script

# Load packages
# `readr` read rectangular data like `csv` and `tsv` files
# `ggplot2` create elegant graphics
library(readr)
library(ggplot2)

# Make a variable for read the file from bin;
data <- readr::read_tsv('../data/n_reads_per_sample.tsv')

# Visualize the tsv file
data

# Make a bar plot of number of reads by sample
barplot <- ggplot(data=data, aes(x=Filename, y=Total, fill=Filename)) + # Graphics number of reads (Total) by Filename
  geom_bar(colour="black", stat="identity") + # "black"> Add a black outline ; "identity"> It leaves the data as is
  theme_bw() + # Remove gray background
  theme(panel.grid.minor=element_blank(), # Hide all the gridlines
        panel.grid.major=element_blank())
rot_plot <- barplot + theme(axis.text.x = element_text(angle = 45, hjust = 1, size=9)) # Rotate sample names in x-axis
rot_plot + guides(fill=FALSE) + # Delete legend
  theme(axis.title.x = element_blank()) +   # Remove x-axis label
  ggtitle("Number of reads by sample") # Add title
