#!/bin/bash

# Download the public datasets required for this pipeline

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR130/025/SRR13070625/SRR13070625_1.fastq.gz -o SRR13070625_Nanopore_sequencing_of_Drosophila_melanogaster_whole_adult_flies_pooled_male_and_female_1.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR124/080/SRR12473480/SRR12473480_subreads.fastq.gz -o SRR12473480_Drosophila_PacBio_HiFi_UltraLow_subreads.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR120/022/SRR12099722/SRR12099722_1.fastq.gz -o SRR12099722_WGS_Drosophila_melanogaster_adult_ISCs_1.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR120/022/SRR12099722/SRR12099722_2.fastq.gz -o SRR12099722_WGS_Drosophila_melanogaster_adult_ISCs_2.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR119/025/SRR11906525/SRR11906525_subreads.fastq.gz -o SRR11906525_WGS_of_drosophila_melanogaster_female_adult_subreads.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR151/042/SRR15130842/SRR15130842_1.fastq.gz -o SRR15130842_GSM5452672_Control_CM2_Drosophila_melanogaster_RNA-Seq_1.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR151/042/SRR15130842/SRR15130842_2.fastq.gz -o SRR15130842_GSM5452672_Control_CM2_Drosophila_melanogaster_RNA-Seq_2.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR151/041/SRR15130841/SRR15130841_1.fastq.gz -o SRR15130841_GSM5452671_Control_CM1_Drosophila_melanogaster_RNA-Seq_1.fastq.gz

curl -L ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR151/041/SRR15130841/SRR15130841_2.fastq.gz -o SRR15130841_GSM5452671_Control_CM1_Drosophila_melanogaster_RNA-Seq_2.fastq.gz

# Download Drosophila melanogaster genome version r6.44 (released Jan 2022)

> wget http://ftp.flybase.net/genomes/Drosophila_melanogaster/dmel_r6.44_FB2022_01/fasta/dmel-all-chromosome-r6.44.fasta.gz

echo "Status de saída: $?"