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
| Early | 0            | 56      | POLR2A/PPARG/RXRG/CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3/None/CEBPB/H3K9ac/CEBPD/KDM1A/NRF1/GPS2/H3K9me3/SETDB1/MBD1/KDM5A/SMC1A/EP300/NCOR1/MED1/HDAC3/HDAC2 |
| Early | 2            | 1       | CEBPB                                                                                                                                                                         |
| Early | 4            | 43      | POLR2A/RXRG/STAT5A/NR3C1/CEBPD/CEBPB/ATF2/ATF7/JUN/FOSL2/KLF4/KLF5/PBX1/STAT1/VDR/RXR/MED1/EP300/BRG1/H3K27ac/H3K4me1/H3K4me2/KDM5A/H3K4me3/SMC1A/NCOR1/HDAC3/HDAC2/CTCF      |
| Early | 6            | 3       | None/NR3C1/CEBPB                                                                                                                                                              |
| Early | 24           | 6       | POLR2A/PPARG/RXRG/None/H3K9ac/TCF7                                                                                                                                            |
| Early | 48           | 24      | POLR2A/PPARG/RXRG/CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3/CEBPB/KDM5A/KDM5C/SMC1A/MED1                                                                         |
| Early | 72           | 3       | POLR2A/PPARG/RXRG                                                                                                                                                             |
| Early | NA           | 25      | PSMB1/CREB1/JUN/PPARG/None/Ubiquitin/H3K9me2/H3K27me3/H3K4me3/H3K27ac/H3K36me3/H3K4me1/H3K79me2/H3K79me3/H4K20me1/CEBPB                                                       |
| Late  | 96           | 9       | POLR2A/PPARG/RXRG/SMC1A/MED1/CTCF                                                                                                                                             |
| Late  | 144          | 7       | POLR2A/PPARG/RXRG/H3K9me3/SETDB1                                                                                                                                              |
| Late  | 168          | 29      | CTCF/H3K27ac/H3K27me3/H3K36me3/H3K4me1/H3K4me2/H3K4me3/PPARG/None/H3K9me3/MED1/CEBPA/POLR2A/CREB1/KDM1A/KMT2B/SMC1A                                                           |
| Late  | 192          | 1       | H3K4me3                                                                                                                                                                       |
| Late  | 240          | 2       | None/H3K9ac                                                                                                                                                                   |
| Late  | NA           | 20      | E2F4/CEBPA/EP300/None/H3K9ac/PPARG/MED1/CREB1/NCOR1/CEBPB/ATF2/JUND/FOSL2                                                                                                     |

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

## 3. The pre-processing and the processing of the raw data
