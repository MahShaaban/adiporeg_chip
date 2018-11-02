#!/bin/bash

test ! -d fastq && mkdir fastq || echo 'fastq/ is already there.'

cat runs_test.csv | cut -d ',' -f15 | tail -n +2 | xargs -P100 -n 1 wget -q -nc -P fastq/
