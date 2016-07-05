##working to convert the files into the proper format for Matrix eQTL

#1a) SNP File
##id	Sam_01	Sam_02	Sam_03	Sam_04	Sam_05	Sam_06	Sam_07	Sam_08	Sam_09	Sam_10	Sam_11	Sam_12	Sam_13	Sam_14	Sam_15	Sam_16
##Snp_01	2	0	2	0	2	1	2	1	1	1	2	2	1	2	2	1
##Snp_02	0	1	1	2	2	1	0	0	0	1	1	1	1	0	1	1

#1b) SNP Location File
##snp	chr	pos
##Snp_01	chr1	721289
##Snp_02	chr1	752565

###will use python for Step 1

#2a) Expression File (Residuals)
##id	Sam_01	Sam_02	Sam_03	Sam_04	Sam_05	Sam_06	Sam_07	Sam_08	Sam_09	Sam_10	Sam_11	Sam_12	Sam_13	Sam_14	Sam_15	Sam_16
##Gene_01	4.91	4.63	5.18	5.07	5.74	5.09	5.31	5.29	4.73	5.72	4.75	4.54	5.01	5.03	4.84	4.44
##Gene_02	13.78	13.14	13.18	13.04	12.85	13.07	13.09	12.83	14.94	13.86	15.26	14.73	14.08	14.33	14.72	14.97

#2b) Gene Location File
##geneid	chr	s1	s2
##Gene_01	chr1	721289	731289
##Gene_02	chr1	752565	762565

#3) Covariate File
##id	Sam_01	Sam_02	Sam_03	Sam_04	Sam_05	Sam_06	Sam_07	Sam_08	Sam_09	Sam_10	Sam_11	Sam_12	Sam_13	Sam_14	Sam_15	Sam_16
##gender	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	1
##age	36	40	46	65	69	43	40	54	44	70	24	34	55	62	48	40
library(peer)
library(dplyr)
#read in expression data and create matrix
exp<-read.table('/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/7-HapMap3-pops-exp/E-MTAB-264.processed.1/YRI_p3_expression.txt',sep='\t',skip=2)
header <- read.table('/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/7-HapMap3-pops-exp/E-MTAB-264.processed.1/YRI_p3_expression.txt',nrows=1,sep='\t')
colnames(exp) <- unlist(header)
dim(exp)
#change as needed
expmat<-as.matrix(exp[,2:109])
expmat <- t(expmat)
#pull sex information
famfile = read.table('/home/aly/Populations/YRI.fam')
samples = t(header)
samples = samples[-1,]
pulled = dplyr::filter(famfile, V1 %in% samples)
pulled = dplyr::select(pulled, V1, V5)
#create sex covariate file
expdf <- as.data.frame(expmat)
expids = data.frame(rownames(expmat))
colnames(expids) = "ID"
colnames(pulled) = c("ID", "sex")
sexcov = left_join(expids, pulled, by = "ID")
covariate = t(sexcov)
write.table(covariate, file = '/home/aly/Matrix_eQTL/YRI.sexcovariate.txt', row.names = TRUE, col.names = FALSE, quote = FALSE)
