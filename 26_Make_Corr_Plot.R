library(GGally)
library(dplyr)

#CHB data
CHB1 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr1_2016-09-29.txt', header = TRUE, sep = "\t")
CHB1 <- dplyr::select(CHB1, gene:pval)
CHB1 <-dplyr::mutate(CHB1, CHR = '1')

CHB2 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr2_2016-09-29.txt', header = TRUE, sep = "\t")
CHB2 <-dplyr::select(CHB2, gene:pval)
CHB2 <-dplyr::mutate(CHB2, CHR = '2')

CHB3 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr3_2016-09-29.txt', header = TRUE, sep = "\t")
CHB3 <-dplyr::select(CHB3, gene:pval)
CHB3 <-dplyr::mutate(CHB3, CHR = '3')

CHB4 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr4_2016-09-29.txt', header = TRUE, sep = "\t")
CHB4 <-dplyr::select(CHB4, gene:pval)
CHB4 <-dplyr::mutate(CHB4, CHR = '4')

CHB5 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr5_2016-09-29.txt', header = TRUE, sep = "\t")
CHB5 <-dplyr::select(CHB5, gene:pval)
CHB5 <-dplyr::mutate(CHB5, CHR = '5')

CHB6 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr6_2016-09-29.txt', header = TRUE, sep = "\t")
CHB6 <-dplyr::select(CHB6, gene:pval)
CHB6 <-dplyr::mutate(CHB6, CHR = '6')

CHB7 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr7_2016-09-29.txt', header = TRUE, sep = "\t")
CHB7 <-dplyr::select(CHB7, gene:pval)
CHB7 <-dplyr::mutate(CHB7, CHR = '7')

CHB8 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr8_2016-09-29.txt', header = TRUE, sep = "\t")
CHB8 <-dplyr::select(CHB8, gene:pval)
CHB8 <-dplyr::mutate(CHB8, CHR = '8')

CHB9 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr9_2016-09-29.txt', header = TRUE, sep = "\t")
CHB9 <-dplyr::select(CHB9, gene:pval)
CHB9 <-dplyr::mutate(CHB9, CHR = '9')

CHB10 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr10_2016-09-29.txt', header = TRUE, sep = "\t")
CHB10 <-dplyr::select(CHB10, gene:pval)
CHB10 <-dplyr::mutate(CHB10, CHR = '10')

CHB11 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr11_2016-09-29.txt', header = TRUE, sep = "\t")
CHB11 <-dplyr::select(CHB11, gene:pval)
CHB11 <-dplyr::mutate(CHB11, CHR = '11')

CHB12 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr12_2016-09-29.txt', header = TRUE, sep = "\t")
CHB12 <-dplyr::select(CHB12, gene:pval)
CHB12 <-dplyr::mutate(CHB12, CHR = '12')

CHB13 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr13_2016-09-29.txt', header = TRUE, sep = "\t")
CHB13 <-dplyr::select(CHB13, gene:pval)
CHB13 <-dplyr::mutate(CHB13, CHR = '13')

CHB14 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr14_2016-09-29.txt', header = TRUE, sep = "\t")
CHB14 <-dplyr::select(CHB14, gene:pval)
CHB14 <-dplyr::mutate(CHB14, CHR = '14')

CHB15 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr15_2016-09-29.txt', header = TRUE, sep = "\t")
CHB15 <-dplyr::select(CHB15, gene:pval)
CHB15 <-dplyr::mutate(CHB15, CHR = '15')

CHB16 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr16_2016-09-29.txt', header = TRUE, sep = "\t")
CHB16 <-dplyr::select(CHB16, gene:pval)
CHB16 <-dplyr::mutate(CHB16, CHR = '16')

CHB17 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr17_2016-09-29.txt', header = TRUE, sep = "\t")
CHB17 <-dplyr::select(CHB17, gene:pval)
CHB17 <-dplyr::mutate(CHB17, CHR = '17')

CHB18 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr18_2016-09-29.txt', header = TRUE, sep = "\t")
CHB18 <-dplyr::select(CHB18, gene:pval)
CHB18 <-dplyr::mutate(CHB18, CHR = '18')

CHB19 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr19_2016-09-29.txt', header = TRUE, sep = "\t")
CHB19 <-dplyr::select(CHB19, gene:pval)
CHB19 <-dplyr::mutate(CHB19, CHR = '19')

CHB20 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr20_2016-09-29.txt', header = TRUE, sep = "\t")
CHB20 <-dplyr::select(CHB20, gene:pval)
CHB20 <-dplyr::mutate(CHB20, CHR = '20')

CHB21 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr21_2016-09-29.txt', header = TRUE, sep = "\t")
CHB21 <-dplyr::select(CHB21, gene:pval)
CHB21 <-dplyr::mutate(CHB21, CHR = '21')

CHB22 <- read.table('/home/aly/ElasticNet/CHB/HapMap3_CHB_exp_10-foldCV_elasticNet_alpha0.5_chr22_2016-09-29.txt', header = TRUE, sep = "\t")
CHB22 <-dplyr::select(CHB22, gene:pval)
CHB22 <-dplyr::mutate(CHB22, CHR = '22')

CHBALL <-dplyr::full_join(CHB1,CHB2)
CHBALL <-dplyr::full_join(CHBALL, CHB3)
CHBALL <-dplyr::full_join(CHBALL, CHB4)
CHBALL <-dplyr::full_join(CHBALL, CHB5)
CHBALL <-dplyr::full_join(CHBALL, CHB6)
CHBALL <-dplyr::full_join(CHBALL, CHB7)
CHBALL <-dplyr::full_join(CHBALL, CHB8)
CHBALL <-dplyr::full_join(CHBALL, CHB9)
CHBALL <-dplyr::full_join(CHBALL, CHB10)
CHBALL <-dplyr::full_join(CHBALL, CHB11)
CHBALL <-dplyr::full_join(CHBALL, CHB12)
CHBALL <-dplyr::full_join(CHBALL, CHB13)
CHBALL <-dplyr::full_join(CHBALL, CHB14)
CHBALL <-dplyr::full_join(CHBALL, CHB15)
CHBALL <-dplyr::full_join(CHBALL, CHB16)
CHBALL <-dplyr::full_join(CHBALL, CHB17)
CHBALL <-dplyr::full_join(CHBALL, CHB18)
CHBALL <-dplyr::full_join(CHBALL, CHB19)
CHBALL <-dplyr::full_join(CHBALL, CHB20)
CHBALL <-dplyr::full_join(CHBALL, CHB21)
CHBALL <-dplyr::full_join(CHBALL, CHB22)
CHBALL <-dplyr::mutate(CHBALL, POP = 'CHB')

#GIH data
GIH1 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr1_2016-09-29.txt', header = TRUE, sep = "\t")
GIH1 <- dplyr::select(GIH1, gene:pval)
GIH1 <-dplyr::mutate(GIH1, CHR = '1')

GIH2 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr2_2016-09-29.txt', header = TRUE, sep = "\t")
GIH2 <-dplyr::select(GIH2, gene:pval)
GIH2 <-dplyr::mutate(GIH2, CHR = '2')

GIH3 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr3_2016-09-29.txt', header = TRUE, sep = "\t")
GIH3 <-dplyr::select(GIH3, gene:pval)
GIH3 <-dplyr::mutate(GIH3, CHR = '3')

GIH4 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr4_2016-09-29.txt', header = TRUE, sep = "\t")
GIH4 <-dplyr::select(GIH4, gene:pval)
GIH4 <-dplyr::mutate(GIH4, CHR = '4')

GIH5 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr5_2016-09-29.txt', header = TRUE, sep = "\t")
GIH5 <-dplyr::select(GIH5, gene:pval)
GIH5 <-dplyr::mutate(GIH5, CHR = '5')

GIH6 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr6_2016-09-29.txt', header = TRUE, sep = "\t")
GIH6 <-dplyr::select(GIH6, gene:pval)
GIH6 <-dplyr::mutate(GIH6, CHR = '6')

GIH7 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr7_2016-09-29.txt', header = TRUE, sep = "\t")
GIH7 <-dplyr::select(GIH7, gene:pval)
GIH7 <-dplyr::mutate(GIH7, CHR = '7')

GIH8 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr8_2016-09-29.txt', header = TRUE, sep = "\t")
GIH8 <-dplyr::select(GIH8, gene:pval)
GIH8 <-dplyr::mutate(GIH8, CHR = '8')

GIH9 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr9_2016-09-29.txt', header = TRUE, sep = "\t")
GIH9 <-dplyr::select(GIH9, gene:pval)
GIH9 <-dplyr::mutate(GIH9, CHR = '9')

GIH10 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr10_2016-09-29.txt', header = TRUE, sep = "\t")
GIH10 <-dplyr::select(GIH10, gene:pval)
GIH10 <-dplyr::mutate(GIH10, CHR = '10')

GIH11 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr11_2016-09-29.txt', header = TRUE, sep = "\t")
GIH11 <-dplyr::select(GIH11, gene:pval)
GIH11 <-dplyr::mutate(GIH11, CHR = '11')

GIH12 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr12_2016-09-29.txt', header = TRUE, sep = "\t")
GIH12 <-dplyr::select(GIH12, gene:pval)
GIH12 <-dplyr::mutate(GIH12, CHR = '12')

GIH13 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr13_2016-09-29.txt', header = TRUE, sep = "\t")
GIH13 <-dplyr::select(GIH13, gene:pval)
GIH13 <-dplyr::mutate(GIH13, CHR = '13')

GIH14 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr14_2016-09-29.txt', header = TRUE, sep = "\t")
GIH14 <-dplyr::select(GIH14, gene:pval)
GIH14 <-dplyr::mutate(GIH14, CHR = '14')

GIH15 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr15_2016-09-29.txt', header = TRUE, sep = "\t")
GIH15 <-dplyr::select(GIH15, gene:pval)
GIH15 <-dplyr::mutate(GIH15, CHR = '15')

GIH16 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr16_2016-09-29.txt', header = TRUE, sep = "\t")
GIH16 <-dplyr::select(GIH16, gene:pval)
GIH16 <-dplyr::mutate(GIH16, CHR = '16')

GIH17 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr17_2016-09-29.txt', header = TRUE, sep = "\t")
GIH17 <-dplyr::select(GIH17, gene:pval)
GIH17 <-dplyr::mutate(GIH17, CHR = '17')

GIH18 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr18_2016-09-29.txt', header = TRUE, sep = "\t")
GIH18 <-dplyr::select(GIH18, gene:pval)
GIH18 <-dplyr::mutate(GIH18, CHR = '18')

GIH19 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr19_2016-09-29.txt', header = TRUE, sep = "\t")
GIH19 <-dplyr::select(GIH19, gene:pval)
GIH19 <-dplyr::mutate(GIH19, CHR = '19')

GIH20 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr20_2016-09-29.txt', header = TRUE, sep = "\t")
GIH20 <-dplyr::select(GIH20, gene:pval)
GIH20 <-dplyr::mutate(GIH20, CHR = '20')

GIH21 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr21_2016-09-29.txt', header = TRUE, sep = "\t")
GIH21 <-dplyr::select(GIH21, gene:pval)
GIH21 <-dplyr::mutate(GIH21, CHR = '21')

GIH22 <- read.table('/home/aly/ElasticNet/GIH/HapMap3_GIH_exp_10-foldCV_elasticNet_alpha0.5_chr22_2016-09-29.txt', header = TRUE, sep = "\t")
GIH22 <-dplyr::select(GIH22, gene:pval)
GIH22 <-dplyr::mutate(GIH22, CHR = '22')

GIHALL <-dplyr::full_join(GIH1,GIH2)
GIHALL <-dplyr::full_join(GIHALL, GIH3)
GIHALL <-dplyr::full_join(GIHALL, GIH4)
GIHALL <-dplyr::full_join(GIHALL, GIH5)
GIHALL <-dplyr::full_join(GIHALL, GIH6)
GIHALL <-dplyr::full_join(GIHALL, GIH7)
GIHALL <-dplyr::full_join(GIHALL, GIH8)
GIHALL <-dplyr::full_join(GIHALL, GIH9)
GIHALL <-dplyr::full_join(GIHALL, GIH10)
GIHALL <-dplyr::full_join(GIHALL, GIH11)
GIHALL <-dplyr::full_join(GIHALL, GIH12)
GIHALL <-dplyr::full_join(GIHALL, GIH13)
GIHALL <-dplyr::full_join(GIHALL, GIH14)
GIHALL <-dplyr::full_join(GIHALL, GIH15)
GIHALL <-dplyr::full_join(GIHALL, GIH16)
GIHALL <-dplyr::full_join(GIHALL, GIH17)
GIHALL <-dplyr::full_join(GIHALL, GIH18)
GIHALL <-dplyr::full_join(GIHALL, GIH19)
GIHALL <-dplyr::full_join(GIHALL, GIH20)
GIHALL <-dplyr::full_join(GIHALL, GIH21)
GIHALL <-dplyr::full_join(GIHALL, GIH22)
GIHALL <-dplyr::mutate(GIHALL, POP = 'GIH')

#JPT data (This came from Natalie, was copied into my own directory)
JPT1 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr1_2016-09-10.txt', header = TRUE, sep = "\t")
JPT1 <- dplyr::select(JPT1, gene:pval)
JPT1 <-dplyr::mutate(JPT1, CHR = '1')

JPT2 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr2_2016-09-10.txt', header = TRUE, sep = "\t")
JPT2 <-dplyr::select(JPT2, gene:pval)
JPT2 <-dplyr::mutate(JPT2, CHR = '2')

JPT3 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr3_2016-09-10.txt', header = TRUE, sep = "\t")
JPT3 <-dplyr::select(JPT3, gene:pval)
JPT3 <-dplyr::mutate(JPT3, CHR = '3')

JPT4 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr4_2016-09-10.txt', header = TRUE, sep = "\t")
JPT4 <-dplyr::select(JPT4, gene:pval)
JPT4 <-dplyr::mutate(JPT4, CHR = '4')

JPT5 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr5_2016-09-10.txt', header = TRUE, sep = "\t")
JPT5 <-dplyr::select(JPT5, gene:pval)
JPT5 <-dplyr::mutate(JPT5, CHR = '5')

JPT6 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr6_2016-09-10.txt', header = TRUE, sep = "\t")
JPT6 <-dplyr::select(JPT6, gene:pval)
JPT6 <-dplyr::mutate(JPT6, CHR = '6')

JPT7 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr7_2016-09-10.txt', header = TRUE, sep = "\t")
JPT7 <-dplyr::select(JPT7, gene:pval)
JPT7 <-dplyr::mutate(JPT7, CHR = '7')

JPT8 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr8_2016-09-10.txt', header = TRUE, sep = "\t")
JPT8 <-dplyr::select(JPT8, gene:pval)
JPT8 <-dplyr::mutate(JPT8, CHR = '8')

JPT9 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr9_2016-09-10.txt', header = TRUE, sep = "\t")
JPT9 <-dplyr::select(JPT9, gene:pval)
JPT9 <-dplyr::mutate(JPT9, CHR = '9')

JPT10 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr10_2016-09-10.txt', header = TRUE, sep = "\t")
JPT10 <-dplyr::select(JPT10, gene:pval)
JPT10 <-dplyr::mutate(JPT10, CHR = '10')

JPT11 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr11_2016-09-10.txt', header = TRUE, sep = "\t")
JPT11 <-dplyr::select(JPT11, gene:pval)
JPT11 <-dplyr::mutate(JPT11, CHR = '11')

JPT12 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr12_2016-09-10.txt', header = TRUE, sep = "\t")
JPT12 <-dplyr::select(JPT12, gene:pval)
JPT12 <-dplyr::mutate(JPT12, CHR = '12')

JPT13 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr13_2016-09-10.txt', header = TRUE, sep = "\t")
JPT13 <-dplyr::select(JPT13, gene:pval)
JPT13 <-dplyr::mutate(JPT13, CHR = '13')

JPT14 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr14_2016-09-10.txt', header = TRUE, sep = "\t")
JPT14 <-dplyr::select(JPT14, gene:pval)
JPT14 <-dplyr::mutate(JPT14, CHR = '14')

JPT15 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr15_2016-09-10.txt', header = TRUE, sep = "\t")
JPT15 <-dplyr::select(JPT15, gene:pval)
JPT15 <-dplyr::mutate(JPT15, CHR = '15')

JPT16 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr16_2016-09-10.txt', header = TRUE, sep = "\t")
JPT16 <-dplyr::select(JPT16, gene:pval)
JPT16 <-dplyr::mutate(JPT16, CHR = '16')

JPT17 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr17_2016-09-10.txt', header = TRUE, sep = "\t")
JPT17 <-dplyr::select(JPT17, gene:pval)
JPT17 <-dplyr::mutate(JPT17, CHR = '17')

JPT18 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr18_2016-09-10.txt', header = TRUE, sep = "\t")
JPT18 <-dplyr::select(JPT18, gene:pval)
JPT18 <-dplyr::mutate(JPT18, CHR = '18')

JPT19 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr19_2016-09-10.txt', header = TRUE, sep = "\t")
JPT19 <-dplyr::select(JPT19, gene:pval)
JPT19 <-dplyr::mutate(JPT19, CHR = '19')

JPT20 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr20_2016-09-10.txt', header = TRUE, sep = "\t")
JPT20 <-dplyr::select(JPT20, gene:pval)
JPT20 <-dplyr::mutate(JPT20, CHR = '20')

JPT21 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr21_2016-09-10.txt', header = TRUE, sep = "\t")
JPT21 <-dplyr::select(JPT21, gene:pval)
JPT21 <-dplyr::mutate(JPT21, CHR = '21')

JPT22 <- read.table('/home/aly/ElasticNet/JPT/HapMap3_JPT_exp_10-foldCV_elasticNet_alpha0.5_chr22_2016-09-10.txt', header = TRUE, sep = "\t")
JPT22 <-dplyr::select(JPT22, gene:pval)
JPT22 <-dplyr::mutate(JPT22, CHR = '22')

JPTALL <-dplyr::full_join(JPT1,JPT2)
JPTALL <-dplyr::full_join(JPTALL, JPT3)
JPTALL <-dplyr::full_join(JPTALL, JPT4)
JPTALL <-dplyr::full_join(JPTALL, JPT5)
JPTALL <-dplyr::full_join(JPTALL, JPT6)
JPTALL <-dplyr::full_join(JPTALL, JPT7)
JPTALL <-dplyr::full_join(JPTALL, JPT8)
JPTALL <-dplyr::full_join(JPTALL, JPT9)
JPTALL <-dplyr::full_join(JPTALL, JPT10)
JPTALL <-dplyr::full_join(JPTALL, JPT11)
JPTALL <-dplyr::full_join(JPTALL, JPT12)
JPTALL <-dplyr::full_join(JPTALL, JPT13)
JPTALL <-dplyr::full_join(JPTALL, JPT14)
JPTALL <-dplyr::full_join(JPTALL, JPT15)
JPTALL <-dplyr::full_join(JPTALL, JPT16)
JPTALL <-dplyr::full_join(JPTALL, JPT17)
JPTALL <-dplyr::full_join(JPTALL, JPT18)
JPTALL <-dplyr::full_join(JPTALL, JPT19)
JPTALL <-dplyr::full_join(JPTALL, JPT20)
JPTALL <-dplyr::full_join(JPTALL, JPT21)
JPTALL <-dplyr::full_join(JPTALL, JPT22)
JPTALL <-dplyr::mutate(JPTALL, POP = 'JPT')

#LWK data (Came from my redo)
LWK1 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr1_2017-02-14.txt', header = TRUE, sep = "\t")
LWK1 <- dplyr::select(LWK1, gene:pval)
LWK1 <-dplyr::mutate(LWK1, CHR = '1')

LWK2 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr2_2017-02-14.txt', header = TRUE, sep = "\t")
LWK2 <-dplyr::select(LWK2, gene:pval)
LWK2 <-dplyr::mutate(LWK2, CHR = '2')

LWK3 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr3_2017-02-14.txt', header = TRUE, sep = "\t")
LWK3 <-dplyr::select(LWK3, gene:pval)
LWK3 <-dplyr::mutate(LWK3, CHR = '3')

LWK4 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr4_2017-02-14.txt', header = TRUE, sep = "\t")
LWK4 <-dplyr::select(LWK4, gene:pval)
LWK4 <-dplyr::mutate(LWK4, CHR = '4')

LWK5 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr5_2017-02-14.txt', header = TRUE, sep = "\t")
LWK5 <-dplyr::select(LWK5, gene:pval)
LWK5 <-dplyr::mutate(LWK5, CHR = '5')

LWK6 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr6_2017-02-14.txt', header = TRUE, sep = "\t")
LWK6 <-dplyr::select(LWK6, gene:pval)
LWK6 <-dplyr::mutate(LWK6, CHR = '6')

LWK7 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr7_2017-02-14.txt', header = TRUE, sep = "\t")
LWK7 <-dplyr::select(LWK7, gene:pval)
LWK7 <-dplyr::mutate(LWK7, CHR = '7')

LWK8 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr8_2017-02-14.txt', header = TRUE, sep = "\t")
LWK8 <-dplyr::select(LWK8, gene:pval)
LWK8 <-dplyr::mutate(LWK8, CHR = '8')

LWK9 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr9_2017-02-14.txt', header = TRUE, sep = "\t")
LWK9 <-dplyr::select(LWK9, gene:pval)
LWK9 <-dplyr::mutate(LWK9, CHR = '9')

LWK10 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr10_2017-02-14.txt', header = TRUE, sep = "\t")
LWK10 <-dplyr::select(LWK10, gene:pval)
LWK10 <-dplyr::mutate(LWK10, CHR = '10')

LWK11 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr11_2017-02-14.txt', header = TRUE, sep = "\t")
LWK11 <-dplyr::select(LWK11, gene:pval)
LWK11 <-dplyr::mutate(LWK11, CHR = '11')

LWK12 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr12_2017-02-14.txt', header = TRUE, sep = "\t")
LWK12 <-dplyr::select(LWK12, gene:pval)
LWK12 <-dplyr::mutate(LWK12, CHR = '12')

LWK13 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr13_2017-02-14.txt', header = TRUE, sep = "\t")
LWK13 <-dplyr::select(LWK13, gene:pval)
LWK13 <-dplyr::mutate(LWK13, CHR = '13')

LWK14 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr14_2017-02-14.txt', header = TRUE, sep = "\t")
LWK14 <-dplyr::select(LWK14, gene:pval)
LWK14 <-dplyr::mutate(LWK14, CHR = '14')

LWK15 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr15_2017-02-14.txt', header = TRUE, sep = "\t")
LWK15 <-dplyr::select(LWK15, gene:pval)
LWK15 <-dplyr::mutate(LWK15, CHR = '15')

LWK16 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr16_2017-02-14.txt', header = TRUE, sep = "\t")
LWK16 <-dplyr::select(LWK16, gene:pval)
LWK16 <-dplyr::mutate(LWK16, CHR = '16')

LWK17 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr17_2017-02-15.txt', header = TRUE, sep = "\t")
LWK17 <-dplyr::select(LWK17, gene:pval)
LWK17 <-dplyr::mutate(LWK17, CHR = '17')

LWK18 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr18_2017-02-15.txt', header = TRUE, sep = "\t")
LWK18 <-dplyr::select(LWK18, gene:pval)
LWK18 <-dplyr::mutate(LWK18, CHR = '18')

LWK19 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr19_2017-02-15.txt', header = TRUE, sep = "\t")
LWK19 <-dplyr::select(LWK19, gene:pval)
LWK19 <-dplyr::mutate(LWK19, CHR = '19')

LWK20 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr20_2017-02-15.txt', header = TRUE, sep = "\t")
LWK20 <-dplyr::select(LWK20, gene:pval)
LWK20 <-dplyr::mutate(LWK20, CHR = '20')

LWK21 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr21_2017-02-15.txt', header = TRUE, sep = "\t")
LWK21 <-dplyr::select(LWK21, gene:pval)
LWK21 <-dplyr::mutate(LWK21, CHR = '21')

LWK22 <- read.table('/home/aly/LWK/elasticnet/output/HapMap3_LWK_exp_10-foldCV_elasticNet_alpha0.5_chr22_2017-02-15.txt', header = TRUE, sep = "\t")
LWK22 <-dplyr::select(LWK22, gene:pval)
LWK22 <-dplyr::mutate(LWK22, CHR = '22')

LWKALL <-dplyr::full_join(LWK1,LWK2)
LWKALL <-dplyr::full_join(LWKALL, LWK3)
LWKALL <-dplyr::full_join(LWKALL, LWK4)
LWKALL <-dplyr::full_join(LWKALL, LWK5)
LWKALL <-dplyr::full_join(LWKALL, LWK6)
LWKALL <-dplyr::full_join(LWKALL, LWK7)
LWKALL <-dplyr::full_join(LWKALL, LWK8)
LWKALL <-dplyr::full_join(LWKALL, LWK9)
LWKALL <-dplyr::full_join(LWKALL, LWK10)
LWKALL <-dplyr::full_join(LWKALL, LWK11)
LWKALL <-dplyr::full_join(LWKALL, LWK12)
LWKALL <-dplyr::full_join(LWKALL, LWK13)
LWKALL <-dplyr::full_join(LWKALL, LWK14)
LWKALL <-dplyr::full_join(LWKALL, LWK15)
LWKALL <-dplyr::full_join(LWKALL, LWK16)
LWKALL <-dplyr::full_join(LWKALL, LWK17)
LWKALL <-dplyr::full_join(LWKALL, LWK18)
LWKALL <-dplyr::full_join(LWKALL, LWK19)
LWKALL <-dplyr::full_join(LWKALL, LWK20)
LWKALL <-dplyr::full_join(LWKALL, LWK21)
LWKALL <-dplyr::full_join(LWKALL, LWK22)
LWKALL <-dplyr::mutate(LWKALL, POP = 'LWK')

#MEX data
MEX1 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr1_2016-09-06.txt', header = TRUE, sep = "\t")
MEX1 <- dplyr::select(MEX1, gene:pval)
MEX1 <-dplyr::mutate(MEX1, CHR = '1')

MEX2 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr2_2016-09-06.txt', header = TRUE, sep = "\t")
MEX2 <-dplyr::select(MEX2, gene:pval)
MEX2 <-dplyr::mutate(MEX2, CHR = '2')

MEX3 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr3_2016-09-06.txt', header = TRUE, sep = "\t")
MEX3 <-dplyr::select(MEX3, gene:pval)
MEX3 <-dplyr::mutate(MEX3, CHR = '3')

MEX4 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr4_2016-09-06.txt', header = TRUE, sep = "\t")
MEX4 <-dplyr::select(MEX4, gene:pval)
MEX4 <-dplyr::mutate(MEX4, CHR = '4')

MEX5 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr5_2016-09-06.txt', header = TRUE, sep = "\t")
MEX5 <-dplyr::select(MEX5, gene:pval)
MEX5 <-dplyr::mutate(MEX5, CHR = '5')

MEX6 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr6_2016-09-06.txt', header = TRUE, sep = "\t")
MEX6 <-dplyr::select(MEX6, gene:pval)
MEX6 <-dplyr::mutate(MEX6, CHR = '6')

MEX7 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr7_2016-09-06.txt', header = TRUE, sep = "\t")
MEX7 <-dplyr::select(MEX7, gene:pval)
MEX7 <-dplyr::mutate(MEX7, CHR = '7')

MEX8 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr8_2016-09-06.txt', header = TRUE, sep = "\t")
MEX8 <-dplyr::select(MEX8, gene:pval)
MEX8 <-dplyr::mutate(MEX8, CHR = '8')

MEX9 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr9_2016-09-06.txt', header = TRUE, sep = "\t")
MEX9 <-dplyr::select(MEX9, gene:pval)
MEX9 <-dplyr::mutate(MEX9, CHR = '9')

MEX10 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr10_2016-09-06.txt', header = TRUE, sep = "\t")
MEX10 <-dplyr::select(MEX10, gene:pval)
MEX10 <-dplyr::mutate(MEX10, CHR = '10')

MEX11 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr11_2016-09-06.txt', header = TRUE, sep = "\t")
MEX11 <-dplyr::select(MEX11, gene:pval)
MEX11 <-dplyr::mutate(MEX11, CHR = '11')

MEX12 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr12_2016-09-06.txt', header = TRUE, sep = "\t")
MEX12 <-dplyr::select(MEX12, gene:pval)
MEX12 <-dplyr::mutate(MEX12, CHR = '12')

MEX13 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr13_2016-09-06.txt', header = TRUE, sep = "\t")
MEX13 <-dplyr::select(MEX13, gene:pval)
MEX13 <-dplyr::mutate(MEX13, CHR = '13')

MEX14 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr14_2016-09-06.txt', header = TRUE, sep = "\t")
MEX14 <-dplyr::select(MEX14, gene:pval)
MEX14 <-dplyr::mutate(MEX14, CHR = '14')

MEX15 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr15_2016-09-06.txt', header = TRUE, sep = "\t")
MEX15 <-dplyr::select(MEX15, gene:pval)
MEX15 <-dplyr::mutate(MEX15, CHR = '15')

MEX16 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr16_2016-09-06.txt', header = TRUE, sep = "\t")
MEX16 <-dplyr::select(MEX16, gene:pval)
MEX16 <-dplyr::mutate(MEX16, CHR = '16')

MEX17 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr17_2016-09-06.txt', header = TRUE, sep = "\t")
MEX17 <-dplyr::select(MEX17, gene:pval)
MEX17 <-dplyr::mutate(MEX17, CHR = '17')

MEX18 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr18_2016-09-06.txt', header = TRUE, sep = "\t")
MEX18 <-dplyr::select(MEX18, gene:pval)
MEX18 <-dplyr::mutate(MEX18, CHR = '18')

MEX19 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr19_2016-09-06.txt', header = TRUE, sep = "\t")
MEX19 <-dplyr::select(MEX19, gene:pval)
MEX19 <-dplyr::mutate(MEX19, CHR = '19')

MEX20 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr20_2016-09-06.txt', header = TRUE, sep = "\t")
MEX20 <-dplyr::select(MEX20, gene:pval)
MEX20 <-dplyr::mutate(MEX20, CHR = '20')

MEX21 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr21_2016-09-06.txt', header = TRUE, sep = "\t")
MEX21 <-dplyr::select(MEX21, gene:pval)
MEX21 <-dplyr::mutate(MEX21, CHR = '21')

MEX22 <- read.table('/home/aly/ElasticNet/MEX/HapMap3_MEX_exp_10-foldCV_elasticNet_alpha0.5_chr22_2016-09-06.txt', header = TRUE, sep = "\t")
MEX22 <-dplyr::select(MEX22, gene:pval)
MEX22 <-dplyr::mutate(MEX22, CHR = '22')

MEXALL <-dplyr::full_join(MEX1,MEX2)
MEXALL <-dplyr::full_join(MEXALL, MEX3)
MEXALL <-dplyr::full_join(MEXALL, MEX4)
MEXALL <-dplyr::full_join(MEXALL, MEX5)
MEXALL <-dplyr::full_join(MEXALL, MEX6)
MEXALL <-dplyr::full_join(MEXALL, MEX7)
MEXALL <-dplyr::full_join(MEXALL, MEX8)
MEXALL <-dplyr::full_join(MEXALL, MEX9)
MEXALL <-dplyr::full_join(MEXALL, MEX10)
MEXALL <-dplyr::full_join(MEXALL, MEX11)
MEXALL <-dplyr::full_join(MEXALL, MEX12)
MEXALL <-dplyr::full_join(MEXALL, MEX13)
MEXALL <-dplyr::full_join(MEXALL, MEX14)
MEXALL <-dplyr::full_join(MEXALL, MEX15)
MEXALL <-dplyr::full_join(MEXALL, MEX16)
MEXALL <-dplyr::full_join(MEXALL, MEX17)
MEXALL <-dplyr::full_join(MEXALL, MEX18)
MEXALL <-dplyr::full_join(MEXALL, MEX19)
MEXALL <-dplyr::full_join(MEXALL, MEX20)
MEXALL <-dplyr::full_join(MEXALL, MEX21)
MEXALL <-dplyr::full_join(MEXALL, MEX22)
MEXALL <-dplyr::mutate(MEXALL, POP = 'MEX')

#MKK data (came from my re-run for Emma, using Natalie's files)
MKK1 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr1_2017-03-15.txt', header = TRUE, sep = "\t")
MKK1 <- dplyr::select(MKK1, gene:pval)
MKK1 <-dplyr::mutate(MKK1, CHR = '1')

MKK2 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr2_2017-03-15.txt', header = TRUE, sep = "\t")
MKK2 <-dplyr::select(MKK2, gene:pval)
MKK2 <-dplyr::mutate(MKK2, CHR = '2')

MKK3 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr3_2017-03-15.txt', header = TRUE, sep = "\t")
MKK3 <-dplyr::select(MKK3, gene:pval)
MKK3 <-dplyr::mutate(MKK3, CHR = '3')

MKK4 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr4_2017-03-15.txt', header = TRUE, sep = "\t")
MKK4 <-dplyr::select(MKK4, gene:pval)
MKK4 <-dplyr::mutate(MKK4, CHR = '4')

MKK5 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr5_2017-03-15.txt', header = TRUE, sep = "\t")
MKK5 <-dplyr::select(MKK5, gene:pval)
MKK5 <-dplyr::mutate(MKK5, CHR = '5')

MKK6 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr6_2017-03-15.txt', header = TRUE, sep = "\t")
MKK6 <-dplyr::select(MKK6, gene:pval)
MKK6 <-dplyr::mutate(MKK6, CHR = '6')

MKK7 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr7_2017-03-15.txt', header = TRUE, sep = "\t")
MKK7 <-dplyr::select(MKK7, gene:pval)
MKK7 <-dplyr::mutate(MKK7, CHR = '7')

MKK8 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr8_2017-03-15.txt', header = TRUE, sep = "\t")
MKK8 <-dplyr::select(MKK8, gene:pval)
MKK8 <-dplyr::mutate(MKK8, CHR = '8')

MKK9 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr9_2017-03-15.txt', header = TRUE, sep = "\t")
MKK9 <-dplyr::select(MKK9, gene:pval)
MKK9 <-dplyr::mutate(MKK9, CHR = '9')

MKK10 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr10_2017-03-15.txt', header = TRUE, sep = "\t")
MKK10 <-dplyr::select(MKK10, gene:pval)
MKK10 <-dplyr::mutate(MKK10, CHR = '10')

MKK11 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr11_2017-03-15.txt', header = TRUE, sep = "\t")
MKK11 <-dplyr::select(MKK11, gene:pval)
MKK11 <-dplyr::mutate(MKK11, CHR = '11')

MKK12 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr12_2017-03-15.txt', header = TRUE, sep = "\t")
MKK12 <-dplyr::select(MKK12, gene:pval)
MKK12 <-dplyr::mutate(MKK12, CHR = '12')

MKK13 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr13_2017-03-15.txt', header = TRUE, sep = "\t")
MKK13 <-dplyr::select(MKK13, gene:pval)
MKK13 <-dplyr::mutate(MKK13, CHR = '13')

MKK14 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr14_2017-03-15.txt', header = TRUE, sep = "\t")
MKK14 <-dplyr::select(MKK14, gene:pval)
MKK14 <-dplyr::mutate(MKK14, CHR = '14')

MKK15 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr15_2017-03-16.txt', header = TRUE, sep = "\t")
MKK15 <-dplyr::select(MKK15, gene:pval)
MKK15 <-dplyr::mutate(MKK15, CHR = '15')

MKK16 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr16_2017-03-16.txt', header = TRUE, sep = "\t")
MKK16 <-dplyr::select(MKK16, gene:pval)
MKK16 <-dplyr::mutate(MKK16, CHR = '16')

MKK17 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr17_2017-03-16.txt', header = TRUE, sep = "\t")
MKK17 <-dplyr::select(MKK17, gene:pval)
MKK17 <-dplyr::mutate(MKK17, CHR = '17')

MKK18 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr18_2017-03-16.txt', header = TRUE, sep = "\t")
MKK18 <-dplyr::select(MKK18, gene:pval)
MKK18 <-dplyr::mutate(MKK18, CHR = '18')

MKK19 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr19_2017-03-16.txt', header = TRUE, sep = "\t")
MKK19 <-dplyr::select(MKK19, gene:pval)
MKK19 <-dplyr::mutate(MKK19, CHR = '19')

MKK20 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr20_2017-03-16.txt', header = TRUE, sep = "\t")
MKK20 <-dplyr::select(MKK20, gene:pval)
MKK20 <-dplyr::mutate(MKK20, CHR = '20')

MKK21 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr21_2017-03-16.txt', header = TRUE, sep = "\t")
MKK21 <-dplyr::select(MKK21, gene:pval)
MKK21 <-dplyr::mutate(MKK21, CHR = '21')

MKK22 <- read.table('/home/aly/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_chr22_2017-03-16.txt', header = TRUE, sep = "\t")
MKK22 <-dplyr::select(MKK22, gene:pval)
MKK22 <-dplyr::mutate(MKK22, CHR = '22')

MKKALL <-dplyr::full_join(MKK1,MKK2)
MKKALL <-dplyr::full_join(MKKALL, MKK3)
MKKALL <-dplyr::full_join(MKKALL, MKK4)
MKKALL <-dplyr::full_join(MKKALL, MKK5)
MKKALL <-dplyr::full_join(MKKALL, MKK6)
MKKALL <-dplyr::full_join(MKKALL, MKK7)
MKKALL <-dplyr::full_join(MKKALL, MKK8)
MKKALL <-dplyr::full_join(MKKALL, MKK9)
MKKALL <-dplyr::full_join(MKKALL, MKK10)
MKKALL <-dplyr::full_join(MKKALL, MKK11)
MKKALL <-dplyr::full_join(MKKALL, MKK12)
MKKALL <-dplyr::full_join(MKKALL, MKK13)
MKKALL <-dplyr::full_join(MKKALL, MKK14)
MKKALL <-dplyr::full_join(MKKALL, MKK15)
MKKALL <-dplyr::full_join(MKKALL, MKK16)
MKKALL <-dplyr::full_join(MKKALL, MKK17)
MKKALL <-dplyr::full_join(MKKALL, MKK18)
MKKALL <-dplyr::full_join(MKKALL, MKK19)
MKKALL <-dplyr::full_join(MKKALL, MKK20)
MKKALL <-dplyr::full_join(MKKALL, MKK21)
MKKALL <-dplyr::full_join(MKKALL, MKK22)
MKKALL <-dplyr::mutate(MKKALL, POP = 'MKK')

#YRI data
YRI1 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr1_2016-09-06.txt', header = TRUE, sep = "\t")
YRI1 <- dplyr::select(YRI1, gene:pval)
YRI1 <-dplyr::mutate(YRI1, CHR = '1')

YRI2 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr2_2016-09-06.txt', header = TRUE, sep = "\t")
YRI2 <-dplyr::select(YRI2, gene:pval)
YRI2 <-dplyr::mutate(YRI2, CHR = '2')

YRI3 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr3_2016-09-06.txt', header = TRUE, sep = "\t")
YRI3 <-dplyr::select(YRI3, gene:pval)
YRI3 <-dplyr::mutate(YRI3, CHR = '3')

YRI4 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr4_2016-09-06.txt', header = TRUE, sep = "\t")
YRI4 <-dplyr::select(YRI4, gene:pval)
YRI4 <-dplyr::mutate(YRI4, CHR = '4')

YRI5 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr5_2016-09-06.txt', header = TRUE, sep = "\t")
YRI5 <-dplyr::select(YRI5, gene:pval)
YRI5 <-dplyr::mutate(YRI5, CHR = '5')

YRI6 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr6_2016-09-06.txt', header = TRUE, sep = "\t")
YRI6 <-dplyr::select(YRI6, gene:pval)
YRI6 <-dplyr::mutate(YRI6, CHR = '6')

YRI7 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr7_2016-09-06.txt', header = TRUE, sep = "\t")
YRI7 <-dplyr::select(YRI7, gene:pval)
YRI7 <-dplyr::mutate(YRI7, CHR = '7')

YRI8 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr8_2016-09-06.txt', header = TRUE, sep = "\t")
YRI8 <-dplyr::select(YRI8, gene:pval)
YRI8 <-dplyr::mutate(YRI8, CHR = '8')

YRI9 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr9_2016-09-06.txt', header = TRUE, sep = "\t")
YRI9 <-dplyr::select(YRI9, gene:pval)
YRI9 <-dplyr::mutate(YRI9, CHR = '9')

YRI10 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr10_2016-09-06.txt', header = TRUE, sep = "\t")
YRI10 <-dplyr::select(YRI10, gene:pval)
YRI10 <-dplyr::mutate(YRI10, CHR = '10')

YRI11 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr11_2016-09-07.txt', header = TRUE, sep = "\t")
YRI11 <-dplyr::select(YRI11, gene:pval)
YRI11 <-dplyr::mutate(YRI11, CHR = '11')

YRI12 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr12_2016-09-07.txt', header = TRUE, sep = "\t")
YRI12 <-dplyr::select(YRI12, gene:pval)
YRI12 <-dplyr::mutate(YRI12, CHR = '12')

YRI13 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr13_2016-09-07.txt', header = TRUE, sep = "\t")
YRI13 <-dplyr::select(YRI13, gene:pval)
YRI13 <-dplyr::mutate(YRI13, CHR = '13')

YRI14 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr14_2016-09-07.txt', header = TRUE, sep = "\t")
YRI14 <-dplyr::select(YRI14, gene:pval)
YRI14 <-dplyr::mutate(YRI14, CHR = '14')

YRI15 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr15_2016-09-07.txt', header = TRUE, sep = "\t")
YRI15 <-dplyr::select(YRI15, gene:pval)
YRI15 <-dplyr::mutate(YRI15, CHR = '15')

YRI16 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr16_2016-09-07.txt', header = TRUE, sep = "\t")
YRI16 <-dplyr::select(YRI16, gene:pval)
YRI16 <-dplyr::mutate(YRI16, CHR = '16')

YRI17 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr17_2016-09-07.txt', header = TRUE, sep = "\t")
YRI17 <-dplyr::select(YRI17, gene:pval)
YRI17 <-dplyr::mutate(YRI17, CHR = '17')

YRI18 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr18_2016-09-07.txt', header = TRUE, sep = "\t")
YRI18 <-dplyr::select(YRI18, gene:pval)
YRI18 <-dplyr::mutate(YRI18, CHR = '18')

YRI19 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr19_2016-09-07.txt', header = TRUE, sep = "\t")
YRI19 <-dplyr::select(YRI19, gene:pval)
YRI19 <-dplyr::mutate(YRI19, CHR = '19')

YRI20 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr20_2016-09-07.txt', header = TRUE, sep = "\t")
YRI20 <-dplyr::select(YRI20, gene:pval)
YRI20 <-dplyr::mutate(YRI20, CHR = '20')

YRI21 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr21_2016-09-07.txt', header = TRUE, sep = "\t")
YRI21 <-dplyr::select(YRI21, gene:pval)
YRI21 <-dplyr::mutate(YRI21, CHR = '21')

YRI22 <- read.table('/home/aly/ElasticNet/YRI/HapMap3_YRI_exp_10-foldCV_elasticNet_alpha0.5_chr22_2016-09-07.txt', header = TRUE, sep = "\t")
YRI22 <-dplyr::select(YRI22, gene:pval)
YRI22 <-dplyr::mutate(YRI22, CHR = '22')

YRIALL <-dplyr::full_join(YRI1,YRI2)
YRIALL <-dplyr::full_join(YRIALL, YRI3)
YRIALL <-dplyr::full_join(YRIALL, YRI4)
YRIALL <-dplyr::full_join(YRIALL, YRI5)
YRIALL <-dplyr::full_join(YRIALL, YRI6)
YRIALL <-dplyr::full_join(YRIALL, YRI7)
YRIALL <-dplyr::full_join(YRIALL, YRI8)
YRIALL <-dplyr::full_join(YRIALL, YRI9)
YRIALL <-dplyr::full_join(YRIALL, YRI10)
YRIALL <-dplyr::full_join(YRIALL, YRI11)
YRIALL <-dplyr::full_join(YRIALL, YRI12)
YRIALL <-dplyr::full_join(YRIALL, YRI13)
YRIALL <-dplyr::full_join(YRIALL, YRI14)
YRIALL <-dplyr::full_join(YRIALL, YRI15)
YRIALL <-dplyr::full_join(YRIALL, YRI16)
YRIALL <-dplyr::full_join(YRIALL, YRI17)
YRIALL <-dplyr::full_join(YRIALL, YRI18)
YRIALL <-dplyr::full_join(YRIALL, YRI19)
YRIALL <-dplyr::full_join(YRIALL, YRI20)
YRIALL <-dplyr::full_join(YRIALL, YRI21)
YRIALL <-dplyr::full_join(YRIALL, YRI22)
YRIALL <-dplyr::mutate(YRIALL, POP = 'YRI')

#Combine all populations
POPALL <-dplyr::full_join(CHBALL,GIHALL)
POPALL <-dplyr::full_join(POPALL, JPTALL)
POPALL <-dplyr::full_join(POPALL, LWKALL)
POPALL <-dplyr::full_join(POPALL, MEXALL)
POPALL <-dplyr::full_join(POPALL, MKKALL)
POPALL <-dplyr::full_join(POPALL, YRIALL)

#Generate plot
poplist <- list(CHBALL,GIHALL,JPTALL,LWKALL,MEXALL,MKKALL,YRIALL)
popstrings <- c('CHB','GIH','JPT','LWK','MEX','MKK','YRI')

for(i in 1:length(poplist)){
  pop = poplist[[i]]
  data = data.frame(dplyr::select(pop,gene,R2)) %>% 
    mutate(R2=ifelse(is.na(R2),0,R2),gene=as.character(gene)) #set NAs to zero
  colnames(data) <- c('gene',popstrings[i])
  if(exists("allR2") == FALSE){
    allR2 = data
  }else{
    allR2 <- left_join(allR2, data, by='gene')
  }
}

#ggpairs(allR2[,2:8],diag=list(continuous='blank'),lower = list(continuous = wrap("points", cex=0.7)))

pdf(file="corplot.pdf",width=11,height=11)
ggpairs(allR2[,2:8],diag=list(continuous='blank'),lower = list(continuous = wrap("points", cex=0.7)))
dev.off()

png(file="corplot.png",width=960,height=960)
ggpairs(allR2[,2:8],diag=list(continuous='blank'),lower = list(continuous = wrap("points", cex=0.7)))
dev.off()
