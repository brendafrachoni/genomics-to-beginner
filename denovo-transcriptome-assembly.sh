# Trinitiy is a package for conducting de novo transcriptome assembly from RNA-seq data

# For more information: https://github.com/trinityrnaseq/trinityrnaseq/wiki

# You can use the short-read RNA sequencing data provided in the Key Resource Table (Accession number: GSM5452671, GSM5452672) to run the following script

# You need to provide the file path to the sequencing data or run this script in the same folder where the sequencing data are saved

Trinity --seqType fq --max_memory 31G --left /home/brefrachoni/genomics/SRR15130841_GSM5452671_Control_CM1_Drosophila_melanogaster_RNA-Seq_1.fastq.gz,/home/brefrachoni/genomics/SRR15130842_GSM5452672_Control_CM2_Drosophila_melanogaster_RNA-Seq_1.fastq.gz --right /home/brefrachoni/genomics/SRR15130841_GSM5452671_Control_CM1_Drosophila_melanogaster_RNA-Seq_2.fastq.gz,/home/brefrachoni/genomics/SRR15130842_GSM5452672_Control_CM2_Drosophila_melanogaster_RNA-Seq_2.fastq.gz --CPU 20 --output Dmel.trinity

# --seqType: sequence type; as short-read sequencing data are typically present in the FASTQ format, you can specify this as “fq”

# # --max_memory: maximum memory required to run the Trinity. “120G” indicates 120 GB

# --left and --right: input files required for trinity analysis. Currently, short-read sequencing is mainly performed in a “paired-end” mode. Each DNA molecule is sequenced at both the ends, producing two paired files. You should specify one as “--left” and the other as “—right”

# --CPU: the number of threads required for Trinity analysis

# --output: output prefix

# Trinity output should be in the “Dmel.trinity” (or “your_species_trinity”) folder

# Assembled transcript FASTA file will be “Dmel.trinity.Trinity.fasta” (or “your_species_trinity.Trinity.fasta”)

echo "Output status: $?"