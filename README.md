# adiporeg_chip

Collect, process and quality control Chromatin Immunoprecipitation followed by sequencing (ChIP-Seq) data from differentiating 3T3-L1. Related repositories to collect and process other kinds of data are [adiporeg_rna](https://github.com/MahShaaban/adiporeg_rna) and [adiporeg_dhs](https://github.com/MahShaaban/adiporeg_dhs). The processed data are further analyzed in repositories such as [adiporeg](https://github.com/MahShaaban/adiporeg)

This repository aims to detail the following:
1. The search strategy
2. The collected data
3. The pre-processing and the processing of the raw data

## 1. The search strategy

The term "3T3-L1" was used to search the NCBI **SRA** repository. The results were sent to the **run selector**. 1,176 runs were viewed. The runs were faceted by **Assay Type** and the "chip-seq" which resulted in 739 runs. Only 237 samples from 20 different studies were included after being manually reviewed to fit the following criteria:
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

### 2.3 Studies 

## 3. The pre-processing and the processing of the raw data
