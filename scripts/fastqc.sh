#!/bin/bash
# define variables
FASTQ=$(ls fastq | cut -d '.' -f1)

# make qc fastq output
test ! -d qc.fastq && mkdir qc.fastq || echo 'Already exists'

for i in $FASTQ; do
  F=$(printf "qc.fastq/%s_fastqc.zip" "$i")
  if [ ! -f $F ]; then
    CMD="fastqc \
        -t 16 \
        -o qc.fastq/ \
        -f fastq \
        fastq/$i.fastq.gz"
    if $CMD; then
      echo "fastqc ran successfully"
    else
      echo "fastqc failed."
    fi
  fi
done

# make qc sam output
test ! -d qc.sam && mkdir qc.sam || echo 'Already exists'

SAM=$(ls sam | cut -d '.' -f1)

for i in $SAM; do
  F=$(printf "qc.sam/%s_fastqc.zip" "$i")
  if [ ! -f $F ]; then
    fastqc \
      -t 16 \
      -o qc.sam/ \
      -f sam \
      sam/$i.sam
  fi
done

# make qc bam output
test ! -d qc.bam && mkdir qc.bam || echo 'Already exists'

BAM=$(ls sam | cut -d '.' -f1)

for i in $BAM; do
  F=$(printf "qc.bam/%s_fastqc.zip" "$i")
  if [ ! -f $F ]; then
    fastqc \
      -t 16 \
      -o qc.bam/ \
      -f bam \
      bam/$i.bam
  fi
done
