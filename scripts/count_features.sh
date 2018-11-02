#!/bin/bash
# define variables
BAM=$(ls bam.sorted | cut -d '.' -f1)

# make directory of bam.sorted output
test ! -d counts && mkdir counts || echo 'Already exists'

# sort and index bam files
for i in $BAM; do
  if [ ! -f "counts/$i.txt" ]; then
    featureCounts \
    -T 8 \
    -F GTF \
    -t exon \
    -g gene_id \
    -a ./mm10/annotation.gtf \
    -o ./counts/$i.txt \
    ./bam.sorted/$i.bam
    echo "counts/$i.txt was created."
  fi
done
