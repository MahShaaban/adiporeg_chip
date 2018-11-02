#!/bin/bash
# define variables
PEAKS=$(ls peaks | cut -d '_' -f1 | uniq)

# make output director
test ! -d peaks.annotated && mkdir peaks.annotated || echo 'Already exists.'

# run bowtie2 on all files
for i in $PEAKS; do
  INPUT=$(printf "peaks/%s_peaks.narrowPeak" "$i")
  OUTPUT=$(printf "peaks.annotated/%s.bed" "$i")
  if [ ! -f $OUTPUT ]; then
    bedtools annotate \
      -i mm10/annotation.gtf \
      -files $INPUT \
      > $OUTPUT
  fi
done
