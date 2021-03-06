Launch the BinderHub environment by opening the link in a new browser tab [![Binder](http://34.85.253.172/badge_logo.svg)](http://34.85.253.172/v2/gh/kyleaoconnell22/RNA_seq_binder/main).

Test out the following commands.
First, set up your directory structure and download files with this command. You can peek at what it is doing by typing `cat scripts/setup.sh`.
```
sh scripts/setup.sh
```

Now we are going to trim our raw fastq files using trimmomatic, and then map them to a reference genome using bwa. We will have to run each command twice for the two samples, but with some bash scriping we could use wildcards to automate these commands.

```
while read samp; do trimmomatic SE -threads 2 data/raw_fastq/"$samp".fastq data/trimmed/"$samp"_trimmed.fastq ILLUMINACLIP:TruSeq3-PE.fa:2:30:10:2:keepBothReads LEADING:3 TRAILING:3 MINLEN:36 ; done <scripts/samples
```
Then we do the same for bwa to map to the reference genome
```
while read samp; do bwa mem data/reference/M_chelonae_NZ_CP007220.fasta  data/trimmed/"$samp"_trimmed.fastq  > data/aligned/"$samp".sam; done <scripts/samples
```
