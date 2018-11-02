#!/bin/bash
# define variables
BAM=$(ls bam | cut -d '.' -f1)

# make directory of bam.sorted output
test ! -d bam.sorted && mkdir bam.sorted || echo 'Already exists'

# sort and index bam files
for i in $BAM; do
  if [ ! -f "bam.sorted/$i.bam" ]; then
    samtools sort -o bam.sorted/$i.bam bam/$i.bam
    samtools index bam.sorted/$i.bam
    echo "bam.sorted/$i.bam was sorted and indexed."
  fi
done
