#!/bin/bash

SCRIPTS=scripts
LOG=log

all: dir_tree \
	download_fastq \
	make_index \
	get_annotation \
	align_reads \
	sam_to_bam \
	bam_sort_index \
	count_features \
	peak_calling \
	peak_annotating \
	fastqc

# make directory tree
dir_tree:
	test ! -d $(LOG) && mkdir $(LOG) || echo '$(LOG)/ is already there.'

# get fastq files
download_fastq: $(SCRIPTS)/download_fastq.sh runs.csv
	sh $(SCRIPTS)/download_fastq.sh > $(LOG)/download_fastq.out

# make genome index
make_index: $(SCRIPTS)/make_index.sh
	sh $(SCRIPTS)/make_index.sh > $(LOG)/make_index.out

# get genome annotation
get_annotation: $(SCRIPTS)/get_annotation.sh
	sh $(SCRIPTS)/get_annotation.sh > $(LOG)/get_annotation.out

# align reads
align_reads: $(SCRIPTS)/align_reads.sh fastq/* mm10/*
	sh $(SCRIPTS)/align_reads.sh > $(LOG)/align_reads.out

# sam to bam
sam_to_bam: $(SCRIPTS)/sam_to_bam.sh sam/*
	sh $(SCRIPTS)/sam_to_bam.sh > $(LOG)/sam_to_bam.out

# sort and index bam
bam_sort_index: $(SCRIPTS)/bam_sort_index.sh bam/*
	sh $(SCRIPTS)/bam_sort_index.sh > $(LOG)/bam_sort_index.out

# count featuresc
count_features: $(SCRIPTS)/count_features.sh bam.sorted/*
	sh $(SCRIPTS)/count_features.sh > $(LOG)/count_features.out

# peak calling
peak_calling: $(SCRIPTS)/peak_calling.sh sam/*
	sh $(SCRIPTS)/peak_calling.sh > $(LOG)/peak_calling.out

# peak annotating
peak_annotating: $(SCRIPTS)/peak_annotating.sh peaks/*
	sh $(SCRIPTS)/peak_annotating.sh > $(LOG)/peak_annotating.out

# quality chekcs
fastqc: $(SCRIPTS)/fastqc.sh fastq/* sam/* bam/*
	sh $(SCRIPTS)/fastqc.sh > $(LOG)/fastqc.out
