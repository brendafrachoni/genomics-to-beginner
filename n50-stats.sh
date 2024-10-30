#!/bin/bash

# Unzipped FASTA/Q files are required for assembly-stats

# You can unzip your fastq.gz files using the command “gzip -d file_name.fastq.gz”

gzip -d SRR11906525_WGS_of_drosophila_melanogaster_female_adult_subreads.fastq.gz

gzip -d SRR12473480_Drosophila_PacBio_HiFi_UltraLow_subreads.fastq.gz

gzip -d SRR13070625_Nanopore_sequencing_of_Drosophila_melanogaster_whole_adult_flies_pooled_male_and_female_1.fastq.gz

# For general usage, specify the read or contig file names after “assembly-stats”

# Calculate summary stats and save the output as an “N50_stat” file

assembly-stats SRR11906525_WGS_of_drosophila_melanogaster_female_adult_subreads.fastq >> N50_stat

assembly-stats SRR12473480_Drosophila_PacBio_HiFi_UltraLow_subreads.fastq >> N50_stat

assembly-stats SRR13070625_Nanopore_sequencing_of_Drosophila_melanogaster_whole_adult_flies_pooled_male_and_female_1.fastq >> N50_stat

echo "Status de saída: $?"