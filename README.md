## [STAR PROTOCOLS 1799](https://star-protocols.cell.com/protocols/1799)

## A beginner’s guide to assembling a draft genome and analyzing structural variants with long-read sequencing technologies

# 1. Environment setup and datasets download

Create a conda environment using the specified versions of the following packages to avoid package dependency issues. See more at *conda-environment-setup.md*

´kat=2.4.1´
Tools for analyzing DNA/RNA sequencing data by examining k-mer counts. ´kat´ helps evaluate the quality and completeness of genome assemblies by comparing k-mer profiles of the assembled genome to raw sequencing reads.

´trinity=2.13.2´
Provides a powerful tool for de novo transcriptome assembly from RNA sequencing (RNA-Seq) data.  Essentially, it takes short RNA-Seq reads (typically from Illumina platforms) and reconstructs the full-length transcripts that were present in the original RNA sample. In genome assembly projects, Trinity-assembled transcripts can be used as long reads to scaffold contigs and fill gaps in the draft genome, improving its contiguity and completeness.

´assembly-stats bioawk shasta canu hifiasm´


hisat2
busco=5.2.2
ragtag
svim svim-asm

Download the required public datasets

  ```
  chmod +x download-files.sh

  ./download-files.sh
  ```

# 2. Visualizing read-length distribution

  ```
  chmod +x read-length-table.sh

  ./read-length-table.sh
  ```


Install R packages "ggplot2", "dplyr", "cowplot" and run the script.

  ```
  Rscript read-length-distribution.R
  ```


Calculate N50 statistics using assembly-stats

  ```
  chmod +x n50-stats.sh

  ./n50-stats.sh
  ```

You can see the output of assembly-stats by typing “cat N50_stat” in your terminal

  ```
  cat N50_stat
  ```

The following is the output of “cat N50_stat” command (result of assembly-stats)

> stats for SRR11906525_WGS_of_drosophila_melanogaster_female_adult_subreads.fastq
> 
> sum = 12016661679, n = 1437524, ave = 8359.28, largest = 99345
> 
> N50 = 13094, n = 321336
> 
> N60 = 11342, n = 419876
> 
> N70 = 9489, n = 535376
> 
> N80 = 7388, n = 678061
> 
> N90 = 4902, n = 874814
> 
> N100 = 50, n = 1437524
> 
> N_count = 0
> 
> Gaps = 0
> 
> stats for SRR12473480_Drosophila_PacBio_HiFi_UltraLow_subreads.fastq
> 
> sum = 25600110705, n = 2301518, ave = 11123.14, largest = 26462
> 
> N50 = 11151, n = 976954
> 
> N60 = 10586, n = 1212627
> 
> N70 = 10055, n = 1460775
> 
> N80 = 9530, n = 1722273
> 
> N90 = 8996, n = 1998694
> 
> N100 = 369, n = 2301518
> 
> N_count = 0
> 
> Gaps = 0
> 
> stats for SRR13070625_Nanopore_sequencing_of_Drosophila_melanogaster_whole_adult_flies_pooled_male_and_female_1.fastq
> 
> sum = 7133020037, n = 640215, ave = 11141.60, largest = 417450
> 
> N50 = 21491, n = 83878
> 
> N60 = 16642, n = 121685
> 
> N70 = 12824, n = 170598
> 
> N80 = 9526, n = 235039
> 
> N90 = 6112, n = 327186
> 
> N100 = 1, n = 640215
> 
> N_count = 0
> 
> Gaps = 0
> 


