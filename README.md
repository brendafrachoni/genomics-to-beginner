## [STAR PROTOCOLS 1799](https://star-protocols.cell.com/protocols/1799)

## A beginner’s guide to assembling a draft genome and analyzing structural variants with long-read sequencing technologies

# 1. Environment setup

Create a conda environment using the specified versions of the following packages to avoid package dependency issues. See more at *conda-environment-setup.md*

```kat=2.4.1```

Tools for analyzing DNA/RNA sequencing data by examining k-mer counts. ```kat``` helps evaluate the quality and completeness of genome assemblies by comparing k-mer profiles of the assembled genome to raw sequencing reads.

**Core Functions:**
- ```hist```: Generates a histogram of k-mer occurrences from a sequence file (fasta or fastq) or a pre-computed k-mer count file (jellyfish hash). This helps visualize the distribution of k-mers and identify any biases or anomalies in the data.   
- ```gcp```: (K-mer GC Processor) Creates a matrix showing the number of k-mers with specific GC content and k-mer counts. Useful for assessing GC bias in the sequencing data.   
- ```comp```: Compares k-mer profiles between two or three sequence files or hashes. This helps determine the similarity or dissimilarity between datasets, which is valuable in tasks like:
  - Assessing the quality of genome assemblies.   
  - Comparing different sequencing runs.
  - Identifying contamination in the data.
- ```sect```: (SEquence Coverage Estimator Tool) Estimates the sequencing coverage of a genome by analyzing k-mer frequencies. This aids in understanding the depth and uniformity of sequencing.   

**Key Applications:**
- Genome Assembly: kat helps evaluate the quality and completeness of genome assemblies by comparing k-mer profiles of the assembled genome to raw sequencing reads.
- RNA-Seq Analysis: Analyzing k-mer distributions in RNA-Seq data can reveal transcript abundance and alternative splicing events.   
- Metagenomics: kat aids in characterizing the composition of microbial communities by comparing k-mer profiles of metagenomic samples.
- Error Detection and Correction: Unusual k-mer frequencies can indicate sequencing errors or biases, enabling their detection and potential correction.

```trinity=2.13.2```

Provides a powerful tool for de novo transcriptome assembly from RNA sequencing (RNA-Seq) data.  Essentially, it takes short RNA-Seq reads (typically from Illumina platforms) and reconstructs the full-length transcripts that were present in the original RNA sample.

**Core Function:** Transcriptome Assembly: Trinity uses a three-step process to assemble transcripts:
- Inchworm: Assembles the RNA-Seq reads into linear contigs by finding the most likely paths through the sequence data.   
- Chrysalis: Clusters the contigs into groups representing potential transcripts and constructs a de Bruijn graph for each cluster.   
- Butterfly: Processes the de Bruijn graphs to reconstruct full-length transcripts, resolving alternative splicing isoforms and paralogous genes.

**Key Features:**
- De Novo Assembly: Trinity excels at assembling transcriptomes without a reference genome, making it ideal for non-model organisms or when studying genes not present in existing annotations.   
- Isoform Resolution: It can effectively identify and reconstruct different isoforms of the same gene, providing a more complete picture of gene expression.
- Handling Complexity: Trinity is designed to handle the complexities of RNA-Seq data, including alternative splicing, gene duplications, and varying expression levels.   
- Modularity: Trinity incorporates various modules and algorithms for read normalization, quality control, and filtering, allowing for customization and optimization of the assembly process. 

In genome assembly projects, Trinity-assembled transcripts can be used as long reads to scaffold contigs and fill gaps in the draft genome, improving its contiguity and completeness.

```assembly-stats```

**Function:** Computes various statistics and metrics to assess the quality of a genome assembly.

**Key Metrics:** N50 (a measure of contig length), L50 (number of contigs needed to cover 50% of the genome), total assembly length, number of contigs, GC content, and more.

**Purpose:** Helps evaluate the completeness, contiguity, and potential errors in an assembly, aiding in comparisons between different assemblies or assembly methods.

```bioawk```

**Function:** A modified version of awk (a pattern scanning and text processing language) specifically designed for bioinformatics data.

**Key Features:** Efficiently processes common bioinformatics file formats like FASTA, FASTQ, SAM, and VCF.

**Purpose:** Enables quick extraction, filtering, and manipulation of sequence data and annotations for downstream analyses.

```shasta```

**Function:** A de novo genome assembler primarily designed for long-read sequencing data (e.g., Oxford Nanopore, PacBio).

**Key Features:** Utilizes a unique assembly algorithm that focuses on finding overlaps between reads to construct the genome.

**Purpose:** Produces high-quality genome assemblies with long contigs, especially for complex genomes.

```canu```

**Function:** Another de novo genome assembler optimized for long-read sequencing data.

**Key Features:** Employs a Celera Assembler-based approach to correct errors in long reads and assemble them into contigs.

**Purpose:** Generates accurate and contiguous genome assemblies, particularly effective for large and repetitive genomes.

```hifiasm```

**Function:** A de novo assembler specifically designed for high-fidelity (HiFi) long reads, such as those produced by PacBio HiFi sequencing.

**Key Features:** Leverages the high accuracy of HiFi reads to achieve highly contiguous and accurate assemblies with minimal error correction.

**Purpose:** Produces near-complete and highly accurate genome assemblies, often resulting in chromosome-level scaffolds.

```hisat2```

The hisat2 Bioconda package provides a fast and sensitive alignment program for mapping next-generation sequencing (NGS) reads to a reference genome. It's particularly well-suited for RNA-Seq data, but can also be used with DNA sequencing data.

**Core Function:**
Sequence Alignment: HISAT2 aligns short reads (typically from Illumina platforms) to a reference genome. It excels at handling spliced alignments, making it ideal for RNA-Seq data where reads may span across exon-exon junctions.  

**Key Features:**
- Spliced Alignment: HISAT2 efficiently aligns reads derived from RNA, accounting for introns and exons.   
- Speed and Sensitivity: It uses advanced algorithms and data structures (like the FM index and graph-based alignment) to achieve fast and accurate alignments, even with large genomes and complex datasets.   
- Flexibility: HISAT2 can align reads to a single reference genome or a population of genomes (e.g., for variant calling).   
- Compatibility: It supports various input formats (FASTQ, SAM, BAM) and outputs alignments in standard SAM/BAM format.   
- Customization: HISAT2 offers a range of parameters to fine-tune the alignment process based on the specific characteristics of the data and research question.

```busco=5.2.2```

BUSCO (Benchmarking Universal Single-Copy Orthologs) is a software package that assesses the completeness and quality of genome assemblies and annotations. It does this by searching for a set of highly conserved genes that are expected to be present in single copy in a given lineage.

**Key Applications of BUSCO 5.2.2:**
- Assessing Genome Assembly Quality: A high BUSCO score indicates a more complete and accurate genome assembly.   
- Evaluating Annotation Completeness: BUSCO can identify missing or fragmented genes in an annotation, helping to improve gene prediction and annotation quality.   
- Comparing Genomes: BUSCO scores can be used to compare the completeness of different genome assemblies or annotations, aiding in the selection of the best assembly for downstream analysis.   
- Phylogenetic Analysis: BUSCO genes can be used for phylogenetic analysis, as they are conserved across a wide range of species.

```ragtag```

RagTag is a powerful bioinformatics tool designed to improve the quality of genome assemblies. It focuses on scaffolding (ordering and orienting contigs) and correcting errors in draft genome assemblies.

**Key Features:**
- Fast and accurate: RagTag employs efficient algorithms to perform scaffolding and correction quickly and accurately.
- Flexible: It supports various input formats (FASTA, GFA, AGP) and can handle different types of reference data (genomes, maps).
- User-friendly: RagTag is relatively easy to use, with a command-line interface and clear documentation.

```svim```

**Function:** Detects SVs from long-read sequencing data (e.g., PacBio, Oxford Nanopore).

**Input:** Aligned long reads in BAM format (preferably from minimap2).

**SV types detected:** Deletions, insertions, inversions, tandem duplications, interspersed duplications, and translocations.

**Key features:**
- Distinguishes between similar events (e.g., tandem vs. interspersed duplications).
- Estimates genotypes for some SV types.
- Sensitive and accurate for long-read data.

```svim-asm```

**Function:** Detects SVs from genome assemblies. It compares two assemblies (e.g., a new assembly to a reference genome) to identify differences.

**Input:** Aligned genome assemblies in BAM format (preferably from minimap2).

**SV types detected:** Deletions, insertions, inversions, tandem duplications, and interspersed duplications.

**Key features:**
- Designed for both haploid and diploid assemblies.
- Can genotype SVs in diploid assemblies.
- Fast and efficient for large genomes.



# 2. Download the required public datasets

  ```
  chmod +x download-files.sh

  ./download-files.sh
  ```

# 3. Visualizing read-length distribution

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


