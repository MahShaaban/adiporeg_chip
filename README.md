# adiporeg_chip

Collect, process and quality control Chromatin Immunoprecipitation followed by sequencing (ChIP-Seq) data from differentiating 3T3-L1. Related repositories to collect and process other kinds of data are [adiporeg_rna](https://github.com/MahShaaban/adiporeg_rna) and [adiporeg_dhs](https://github.com/MahShaaban/adiporeg_dhs). The processed data are further analyzed in repositories such as [adiporeg](https://github.com/MahShaaban/adiporeg)

This repository aims to detail the following:
1. The search strategy
2. The collected data
3. The pre-processing and the processing of the raw data

## 1. The search strategy

The term "3T3-L1" was used to search the NCBI **SRA** repository. The results were sent to the **run selector**. 1,176 runs were viewed. The runs were faceted by **Assay Type** and the "chip-seq" which resulted in 739 runs. Only 235 samples from 20 different studies were included after being manually reviewed to fit the following criteria:
* The raw data is available from GEO and has a GEO identifier (GSM#)
* The raw data is linked to a published publicly available article
* The protocols for generating the data sufficiently describe the origin of the cell line, the differentiation medium and the time points when the samples were collected. 
* In case the experimenal designs included treatment other than the differentiation medias, the control (non-treated) samples were included.

Note: The data quality and the platform discrepencies are not inluded in these criteria

## 2. The collected data

### 2.1 Sample table

| Stage | Time (hours) | Samples | Factors                                                                                                                                                                       |
|-------|--------------|---------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Early | -48          | 7       | CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3                                                                                                                        |
|       | 0            | 56      | POLR2A/PPARG/RXRG/CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3/None/CEBPB/H3K9ac/CEBPD/KDM1A/NRF1/GPS2/H3K9me3/SETDB1/MBD1/KDM5A/SMC1A/EP300/NCOR1/MED1/HDAC3/HDAC2 |
|       | 2            | 1       | CEBPB                                                                                                                                                                         |
|       | 4            | 43      | POLR2A/RXRG/STAT5A/NR3C1/CEBPD/CEBPB/ATF2/ATF7/JUN/FOSL2/KLF4/KLF5/PBX1/STAT1/VDR/RXR/MED1/EP300/BRG1/H3K27ac/H3K4me1/H3K4me2/KDM5A/H3K4me3/SMC1A/NCOR1/HDAC3/HDAC2/CTCF      |
|       | 6            | 3       | None/NR3C1/CEBPB                                                                                                                                                              |
|       | 24           | 6       | POLR2A/PPARG/RXRG/None/H3K9ac/TCF7                                                                                                                                            |
|       | 48           | 24      | POLR2A/PPARG/RXRG/CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3/CEBPB/KDM5A/KDM5C/SMC1A/MED1                                                                         |
|       | 72           | 3       | POLR2A/PPARG/RXRG                                                                                                                                                             |
|       | NA           | 25      | PSMB1/CREB1/JUN/PPARG/None/Ubiquitin/H3K9me2/H3K27me3/H3K4me3/H3K27ac/H3K36me3/H3K4me1/H3K79me2/H3K79me3/H4K20me1/CEBPB                                                       |
| Late  | 96           | 9       | POLR2A/PPARG/RXRG/SMC1A/MED1/CTCF                                                                                                                                             |
|       | 144          | 7       | POLR2A/PPARG/RXRG/H3K9me3/SETDB1                                                                                                                                              |
|       | 168          | 29      | CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3/PPARG/None/H3K9me3/MED1/CEBPA/POLR2A/CREB1/KDM1A/KMT2B/SMC1A                                                           |
|       | 192          | 1       | H3K4me3                                                                                                                                                                       |
|       | 240          | 2       | None/H3K9ac                                                                                                                                                                   |
|       | NA           | 20      | E2F4/CEBPA/EP300/None/H3K9ac/PPARG/MED1/CREB1/NCOR1/CEBPB/ATF2/JUND/FOSL2                                                                                                     |
### 2.2 Run table

| Study     | Samples    | Runs |
|-----------|------------|------|
| GSE13511  | GSM340794  | 3    |
|           | GSM340795  | 3    |
|           | GSM340796  | 4    |
|           | GSM340797  | 3    |
|           | GSM340798  | 3    |
|           | GSM340799  | 3    |
|           | GSM340800  | 2    |
|           | GSM340801  | 2    |
|           | GSM340802  | 3    |
|           | GSM340803  | 2    |
|           | GSM340804  | 3    |
|           | GSM340805  | 2    |
|           | GSM340806  | 2    |
|           | GSM340807  | 2    |
|           | GSM340808  | 2    |
|           | GSM340809  | 2    |
|           | GSM340810  | 2    |
|           | GSM340811  | 2    |
| GSE17067  | GSM427092  | 1    |
|           | GSM427094  | 1    |
|           | GSM427095  | 1    |
|           | GSM427097  | 1    |
| GSE21314  | GSM532740  | 1    |
|           | GSM532744  | 1    |
| GSE21365  | GSM535740  | 9    |
|           | GSM535741  | 3    |
|           | GSM535742  | 2    |
|           | GSM535743  | 2    |
|           | GSM535744  | 2    |
|           | GSM535745  | 4    |
|           | GSM535746  | 2    |
|           | GSM535747  | 2    |
|           | GSM535748  | 4    |
|           | GSM535749  | 2    |
|           | GSM535750  | 2    |
|           | GSM535751  | 2    |
|           | GSM535752  | 2    |
|           | GSM535753  | 4    |
|           | GSM535754  | 2    |
|           | GSM535755  | 3    |
|           | GSM535756  | 3    |
|           | GSM535757  | 3    |
|           | GSM535758  | 2    |
|           | GSM535759  | 4    |
|           | GSM535760  | 2    |
|           | GSM535761  | 2    |
|           | GSM535762  | 4    |
|           | GSM535763  | 3    |
|           | GSM535764  | 3    |
|           | GSM535765  | 3    |
|           | GSM535766  | 2    |
|           | GSM535767  | 4    |
|           | GSM535768  | 2    |
|           | GSM535769  | 2    |
|           | GSM535770  | 2    |
| GSE21898  | GSM544717  | 1    |
|           | GSM544718  | 1    |
|           | GSM544719  | 1    |
|           | GSM544720  | 1    |
|           | GSM544721  | 1    |
|           | GSM544722  | 1    |
|           | GSM544723  | 1    |
|           | GSM544724  | 1    |
|           | GSM544725  | 1    |
|           | GSM544726  | 1    |
| GSE27826  | GSM686970  | 1    |
|           | GSM686971  | 1    |
|           | GSM686972  | 1    |
|           | GSM686973  | 1    |
|           | GSM686974  | 1    |
|           | GSM686975  | 1    |
|           | GSM686976  | 1    |
|           | GSM686977  | 1    |
|           | GSM686978  | 1    |
|           | GSM686979  | 1    |
|           | GSM686980  | 1    |
|           | GSM686981  | 1    |
|           | GSM686982  | 1    |
|           | GSM686983  | 1    |
| GSE31867  | GSM790410  | 1    |
| GSE33821  | GSM1095377 | 1    |
|           | GSM1095378 | 1    |
|           | GSM1095379 | 1    |
|           | GSM1095381 | 1    |
|           | GSM838021  | 1    |
|           | GSM838022  | 1    |
| GSE41455  | GSM1017630 | 18   |
|           | GSM1017631 | 14   |
|           | GSM1017632 | 48   |
|           | GSM1017633 | 56   |
|           | GSM1017634 | 16   |
|           | GSM1017635 | 44   |
|           | GSM1017636 | 48   |
| GSE49423  | GSM1199128 | 4    |
|           | GSM1199130 | 2    |
|           | GSM1199132 | 1    |
|           | GSM1199134 | 2    |
|           | GSM1199136 | 1    |
|           | GSM1199138 | 1    |
|           | GSM1199140 | 1    |
|           | GSM1199142 | 1    |
| GSE50934  | GSM1232698 | 1    |
|           | GSM1232699 | 1    |
|           | GSM1232700 | 1    |
|           | GSM1232701 | 1    |
|           | GSM1232706 | 1    |
|           | GSM1232707 | 1    |
| GSE56745  | GSM1368000 | 1    |
|           | GSM1368002 | 2    |
|           | GSM1368003 | 2    |
|           | GSM1368005 | 1    |
|           | GSM1368007 | 1    |
|           | GSM1368009 | 1    |
|           | GSM1368011 | 1    |
|           | GSM1368012 | 1    |
|           | GSM1368013 | 1    |
|           | GSM1368014 | 1    |
|           | GSM1368015 | 1    |
| GSE56872  | GSM1370447 | 1    |
|           | GSM1370448 | 1    |
|           | GSM1370449 | 1    |
|           | GSM1370450 | 1    |
|           | GSM1370452 | 1    |
|           | GSM1370453 | 1    |
|           | GSM1370454 | 1    |
|           | GSM1370455 | 1    |
|           | GSM1370456 | 1    |
|           | GSM1370457 | 1    |
|           | GSM1370466 | 1    |
|           | GSM1370467 | 1    |
|           | GSM1370468 | 1    |
|           | GSM1370469 | 1    |
|           | GSM1370470 | 1    |
|           | GSM1370471 | 1    |
|           | GSM1370472 | 1    |
|           | GSM1370473 | 1    |
|           | GSM1370474 | 1    |
| GSE57777  | GSM1388416 | 1    |
|           | GSM1388417 | 1    |
| GSE58491  | GSM1412512 | 1    |
|           | GSM1412513 | 1    |
|           | GSM1412514 | 1    |
|           | GSM1412515 | 1    |
|           | GSM1412516 | 1    |
|           | GSM1412517 | 1    |
|           | GSM1412518 | 1    |
|           | GSM1412519 | 1    |
|           | GSM1412520 | 1    |
| GSE73432  | GSM1893623 | 1    |
|           | GSM1893624 | 1    |
|           | GSM1893625 | 2    |
|           | GSM1893626 | 1    |
|           | GSM1893628 | 2    |
|           | GSM1893629 | 1    |
|           | GSM1893630 | 2    |
|           | GSM1893631 | 1    |
|           | GSM1893632 | 1    |
|           | GSM1893633 | 1    |
|           | GSM1893634 | 2    |
|           | GSM1893636 | 2    |
|           | GSM1893637 | 1    |
|           | GSM1893649 | 1    |
| GSE74189  | GSM2522176 | 1    |
|           | GSM2522177 | 1    |
| GSE84410  | GSM2233356 | 1    |
|           | GSM2233357 | 1    |
|           | GSM2233358 | 1    |
|           | GSM2233359 | 1    |
|           | GSM2233360 | 1    |
|           | GSM2233361 | 1    |
|           | GSM2233368 | 1    |
|           | GSM2233369 | 1    |
|           | GSM2233370 | 1    |
|           | GSM2233371 | 1    |
|           | GSM2233373 | 1    |
|           | GSM2391498 | 1    |
|           | GSM2391499 | 1    |
|           | GSM2391500 | 1    |
|           | GSM2391501 | 1    |
| GSE85100  | GSM2257695 | 2    |
|           | GSM2257696 | 2    |
|           | GSM2257705 | 2    |
|           | GSM2257706 | 2    |
| GSE95533  | GSM2515924 | 1    |
|           | GSM2515925 | 1    |
|           | GSM2515926 | 1    |
|           | GSM2515927 | 1    |
|           | GSM2515928 | 1    |
|           | GSM2515929 | 1    |
|           | GSM2515930 | 1    |
|           | GSM2515931 | 1    |
|           | GSM2515932 | 1    |
|           | GSM2515933 | 1    |
|           | GSM2515936 | 1    |
|           | GSM2515937 | 1    |
|           | GSM2515940 | 1    |
|           | GSM2515941 | 1    |
|           | GSM2515944 | 1    |
|           | GSM2515945 | 1    |
|           | GSM2515946 | 1    |
|           | GSM2515947 | 1    |
|           | GSM2515948 | 1    |
|           | GSM2515949 | 1    |
|           | GSM2515950 | 1    |
|           | GSM2515951 | 1    |
|           | GSM2515952 | 1    |
|           | GSM2515953 | 1    |
|           | GSM2515954 | 1    |
|           | GSM2515955 | 1    |
|           | GSM2515956 | 1    |
|           | GSM2515957 | 1    |
|           | GSM2515958 | 1    |
|           | GSM2515959 | 1    |
|           | GSM2515960 | 1    |
|           | GSM2515961 | 1    |
|           | GSM2515962 | 1    |
|           | GSM2515963 | 1    |
|           | GSM2515964 | 1    |
|           | GSM2515965 | 1    |
|           | GSM2515966 | 1    |
|           | GSM2515967 | 1    |
|           | GSM2515968 | 1    |
|           | GSM2515969 | 1    |
|           | GSM2515970 | 1    |
|           | GSM2515971 | 1    |
|           | GSM2515972 | 1    |
|           | GSM2515973 | 1    |
|           | GSM2515974 | 1    |
|           | GSM2515975 | 1    |
|           | GSM2515976 | 1    |
|           | GSM2515977 | 1    |
|           | GSM2515978 | 1    |
|           | GSM2515979 | 1    |
|           | GSM2515980 | 1    |
|           | GSM2515981 | 1    |

| Library Type | Runs |
|--------------|------|
| PAIRED       | 8    |
| SINGLE       | 564  |

| Sequencer Models             | Runs |
|------------------------------|------|
| Illumina Genome Analyzer     | 148  |
| Illumina Genome Analyzer II  | 18   |
| Illumina Genome Analyzer IIx | 45   |
| Illumina HiSeq 1500          | 73   |
| Illumina HiSeq 2000          | 278  |
| Illumina HiSeq 2500          | 2    |
| NextSeq 500                  | 8    |

### 2.3 Studies 

[1] A. S. B. Brier, A. Loft, J. G. Madsen, et al. “The KDM5 family is required
for activation of pro-proliferative cell cycle genes during adipocyte
differentiation”. In: _Nucleic Acids Research_ 45.4 (2017), pp. 1743-1759. ISSN:
13624962. DOI: 10.1093/nar/gkw1156. eprint: 1611.06654.

[2] M. D. Cardamone, B. Tanasa, M. Chan, et al. “GPS2/KDM4A pioneering activity
regulates promoter-specific recruitment of PPARG”. In: _Cell Reports_ 8.1 (2014),
pp. 163-176. ISSN: 22111247. DOI: 10.1016/j.celrep.2014.05.041. eprint:
NIHMS150003.

[3] A. Catic, C. Y. Suh, C. T. Hill, et al. “Genome-wide Map of nuclear protein
degradation shows NCoR1 turnover as a key to mitochondrial gene regulation”. In:
_Cell_ 155.6 (2013), pp. 1380-1395. ISSN: 00928674. DOI:
10.1016/j.cell.2013.11.016. eprint: NIHMS150003.

[4] A. G. Cristancho, M. Schupp, M. I. Lefterova, et al. “Repressor transcription
factor 7-like 1 promotes adipogenic competency in precursor cells”. In:
_Proceedings of the National Academy of Sciences_ 108.39 (2011), pp. 16271-16276.
ISSN: 0027-8424. DOI: 10.1073/pnas.1109409108. <URL:
http://www.pnas.org/cgi/doi/10.1073/pnas.1109409108>.

[5] D. Duteil, E. Metzger, D. Willmann, et al. “LSD1 promotes oxidative
metabolism of white adipose tissue”. In: _Nature Communications_ 5.May (Jun.
2014), p. 4093. ISSN: 20411723. DOI: 10.1038/ncomms5093. <URL:
http://www.nature.com/doifinder/10.1038/ncomms5093>.

[6] A. K. Haakonsson, M. Stahl Madsen, R. Nielsen, et al. “Acute Genome-Wide
Effects of Rosiglitazone on PPARG Transcriptional Networks in Adipocytes”. In:
_Molecular Endocrinology_ 27.9 (2013), pp. 1536-1549. ISSN: 0888-8809. DOI:
10.1210/me.2013-1080. <URL:
https://academic.oup.com/mend/article-lookup/doi/10.1210/me.2013-1080>.

[7] S. Kang, L. T. Tsai, Y. Zhou, et al. “Identification of nuclear hormone
receptor pathways causing insulin resistance by transcriptional and epigenomic
analysis”. In: _Nature Cell Biology_ 17.1 (2015), pp. 44-56. ISSN: 14764679. DOI:
10.1038/ncb3080. eprint: NIHMS150003.

[8] B. Lai, J. E. Lee, Y. Jang, et al. “MLL3/MLL4 are required for CBP/p300
binding on enhancers and super-enhancer formation in brown adipogenesis”. In:
_Nucleic Acids Research_ 45.11 (2017), pp. 6388-6403. ISSN: 13624962. DOI:
10.1093/nar/gkx234.

[9] M. I. Lefterova, D. J. Steger, D. Zhuo, et al. “Cell-Specific Determinants of
Peroxisome Proliferator-Activated Receptor Function in Adipocytes and
Macrophages”. In: _Molecular and Cellular Biology_ 30.9 (2010), pp. 2078-2089.
ISSN: 0270-7306. DOI: 10.1128/MCB.01651-09. <URL:
http://mcb.asm.org/cgi/doi/10.1128/MCB.01651-09>.

[10] X. Luo, K. W. Ryu, D. S. Kim, et al. “PARP-1 Controls the Adipogenic
Transcriptional Program by PARylating C/EBPB and Modulating Its Transcriptional
Activity”. In: _Molecular Cell_ 65.2 (Jan. 2017), pp. 260-271. ISSN: 10974164.
DOI: 10.1016/j.molcel.2016.11.015. <URL:
http://www.ncbi.nlm.nih.gov/pubmed/28107648
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC5258183>.

[11] K. D. Macisaac, K. A. Lo, W. Gordon, et al. “A quantitative model of
transcriptional regulation reveals the influence of binding location on
expression”. In: _PLoS Computational Biology_ 6.4 (Apr. 2010), p. e1000773. ISSN:
1553734X. DOI: 10.1371/journal.pcbi.1000773. <URL:
http://www.ncbi.nlm.nih.gov/pubmed/20442865
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC2861697>.

[12] Y. Matsumura, R. Nakaki, T. Inagaki, et al. “H3K4/H3K9me3 Bivalent Chromatin
Domains Targeted by Lineage-Specific DNA Methylation Pauses Adipocyte
Differentiation”. In: _Molecular Cell_ 60.4 (2015), pp. 584-596. ISSN: 10974164.
DOI: 10.1016/j.molcel.2015.10.025.

[13] T. S. Mikkelsen, Z. Xu, X. Zhang, et al. “Comparative epigenomic analysis of
murine and human adipogenesis”. In: _Cell_ 143.1 (Oct. 2010), pp. 156-169. ISSN:
00928674. DOI: 10.1016/j.cell.2010.09.006. <URL:
http://www.ncbi.nlm.nih.gov/pubmed/20887899
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC2950833>.

[14] R. Nielsen, T. \. Pedersen, D. Hagenbeek, et al. “Genome-wide profiling of
PPARG:RXR and RNA polymerase II occupancy reveals temporal activation of distinct
metabolic pathways and changes in RXR dimer composition during adipogenesis”. In:
_Genes and Development_ 22.21 (2008), pp. 2953-2967. ISSN: 08909369. DOI:
10.1101/gad.501108.

[15] R. Siersbæk, J. G. S. Madsen, B. M. Javierre, et al. “Dynamic Rewiring of
Promoter-Anchored Chromatin Loops during Adipocyte Differentiation”. In:
_Molecular Cell_ 66.3 (2017), pp. 420-435.e5. ISSN: 10974164. DOI:
10.1016/j.molcel.2017.04.010.

[16] R. Siersbaek, R. Nielsen, S. John, et al. “Extensive chromatin remodelling
and establishment of transcription factor hotspots during early adipogenesis”.
In: _EMBO Journal_ 30.8 (Apr. 2011), pp. 1459-1472. ISSN: 02614189. DOI:
10.1038/emboj.2011.65. <URL: http://www.ncbi.nlm.nih.gov/pubmed/21427703
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC3102274>.

[17] R. Siersbæk, A. Rabiee, R. Nielsen, et al. “Transcription factor
cooperativity in early adipogenic hotspots and super-enhancers”. In: _Cell
Reports_ 7.5 (Jun. 2014), pp. 1443-1455. ISSN: 22111247. DOI:
10.1016/j.celrep.2014.04.042. <URL: http://www.ncbi.nlm.nih.gov/pubmed/24857652>.

[18] D. J. Steger, G. R. Grant, M. Schupp, et al. “Propagation of adipogenic
signals through an epigenomic transition state”. In: _Genes and Development_
24.10 (May. 2010), pp. 1035-1044. ISSN: 08909369. DOI: 10.1101/gad.1907110. <URL:
http://www.ncbi.nlm.nih.gov/pubmed/20478996
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC2867208>.

[19] S. E. Step, H. W. Lim, J. M. Marinis, et al. “Anti-diabetic rosiglitazone
remodels the adipocyte transcriptome by redistributing transcription to
PPARG-driven enhancers”. In: _Genes and Development_ 28.9 (May. 2014), pp.
1018-1028. ISSN: 15495477. DOI: 10.1101/gad.237628.114. <URL:
http://www.ncbi.nlm.nih.gov/pubmed/24788520
http://www.pubmedcentral.nih.gov/articlerender.fcgi?artid=PMC4018489>.

[20] L. Wang, S. Xu, J. E. Lee, et al. “Histone H3K9 methyltransferase G9a
represses PPARG expression and adipogenesis”. In: _EMBO Journal_ 32.1 (2013), pp.
45-59. ISSN: 02614189. DOI: 10.1038/emboj.2012.306.

## 3. The pre-processing and the processing of the raw data
