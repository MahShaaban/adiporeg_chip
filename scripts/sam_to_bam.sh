#!/bin/bash
# define variables
SAM=$(ls sam | cut -d '.' -f1)

# make directory of bam output
test ! -d bam && mkdir bam || echo 'Already exists'

# run bowtie2 on all files
for i in $SAM; do
  if [ ! -f "bam/$i.bam" ]; then
    samtools view -Sb sam/$i.sam > bam/$i.bam
    echo "bam/$i.bam was created."
  fi
done
