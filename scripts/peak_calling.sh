#!/bin/bash
# define variables
SAM=$(ls sam | cut -d '.' -f1)

# make output director
test ! -d peaks && mkdir peaks || echo 'Already exists.'

# run bowtie2 on all files
for i in $SAM; do
  PEAKS=$(printf "peaks/%s_peaks.xls" "$i")
  if [ ! -f $PEAKS ]; then
    macs2 callpeak \
      -f SAM \
      --outdir peaks \
      -t sam/$i.sam \
      -n $i
  fi
done
