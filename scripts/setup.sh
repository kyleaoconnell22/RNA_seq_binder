# Setup dir structure
mkdir data data/raw_fastq data/trimmed data/aligned data/reference data/stats/ data/sorted data/mkdups data/calls

# Download the raw sequence data, note that it is heavily downsampled to run really fast
curl https://storage.googleapis.com/nigms-rnaseq/SRR13349122.fastq --output data/raw_fastq/SRR13349122.fastq
curl https://storage.googleapis.com/nigms-rnaseq/SRR13349123.fastq --output data/raw_fastq/SRR13349123.fastq

# Download reference genome
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta --output data/reference/M_chelonae_NZ_CP007220.fasta
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta.amb --output data/reference/M_chelonae_NZ_CP007220.fasta.amb
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta.ann --output data/reference/M_chelonae_NZ_CP007220.fasta.ann
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta.bwt --output data/reference/M_chelonae_NZ_CP007220.fasta.bwt
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta.fai --output data/reference/M_chelonae_NZ_CP007220.fasta.fai
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta.pac --output data/reference/M_chelonae_NZ_CP007220.fasta.pac
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.fasta.sa --output data/reference/M_chelonae_NZ_CP007220.fasta.sa
curl https://storage.googleapis.com/nigms-rnaseq/reference/M_chelonae_NZ_CP007220.dict --output data/reference/M_chelonae_NZ_CP007220.dict