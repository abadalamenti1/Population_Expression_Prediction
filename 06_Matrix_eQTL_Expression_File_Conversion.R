##working to convert the files into the proper format for Matrix eQTL
library(dplyr)

#1) Expression File
##id	Sam_01	Sam_02	Sam_03	Sam_04	Sam_05	Sam_06	Sam_07	Sam_08	Sam_09	Sam_10	Sam_11	Sam_12	Sam_13	Sam_14	Sam_15	Sam_16
##Gene_01	4.91	4.63	5.18	5.07	5.74	5.09	5.31	5.29	4.73	5.72	4.75	4.54	5.01	5.03	4.84	4.44
##Gene_02	13.78	13.14	13.18	13.04	12.85	13.07	13.09	12.83	14.94	13.86	15.26	14.73	14.08	14.33	14.72	14.97
#from Residuals, which included the sex covariate

#Read in gene annotation information
ILMN = read.table("/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/7-HapMap3-pops-exp/GRCh37_hg19_ILMN_Human-6_v2_gene_annotation.txt", sep = "\t")
ILMN = dplyr::slice(ILMN, 2:29823)
q = as.matrix(ILMN$V1)
rownames(q) <- ILMN$V6
colnames(q) <- "GeneID"
q = as.data.frame(q)
ref = dplyr::mutate(q, ILMN_ID = ILMN$V6)

#read in Residuals for population with sex covariate
r = read.table("/home/aly/Matrix_eQTL/Expression/CHBResiduals.txt", header = TRUE, sep = " ")
residuals = t(r)

v = rownames(residuals)
IDs = as.data.frame(v)
residuals = as.data.frame(residuals)
pulled = dplyr::filter(ref, rownames(q) %in% v)

res = dplyr::mutate(residuals, ILMN_ID = rownames(residuals))
genedf = dplyr::inner_join(res, pulled, by = "ILMN_ID")
genedf = dplyr::select(genedf, -GeneID)
genedf = dplyr::distinct(genedf)
row.names(genedf) <- genedf$ILMN_ID
genedf = dplyr::select(genedf, -ILMN_ID)

write.table(genedf, '/home/aly/Matrix_eQTL/Expression/CHB_Expression.txt', quote = FALSE)
##Then physically add in id to text file using nano
