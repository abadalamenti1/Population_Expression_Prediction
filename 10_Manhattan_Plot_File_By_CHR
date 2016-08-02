##filter out results with p-value greater than 0.001
library(dplyr)
library(qqman)

#first change "snps" to "snp" in Output ciseQTL file
#read in output cis eQTL file as a table
a = read.table('~/Matrix_eQTL/Output_ciseQTLs/MEX_22.cis.txt', header = TRUE)

#pull out distinct rsids
a2 = dplyr::distinct(a, snp)

#read in snp location (bp)
snp.location = read.table('~/Matrix_eQTL/SNPs_Location/MEX_22.SNP.Location.txt', header = TRUE, sep = "\t")

#filter for p-value
b = dplyr::filter(a2, pvalue < 0.001)

#add chr column
b = dplyr::mutate(b, CHR = 22)

#generate new file for manhattan plot (qqman)
ann = dplyr::filter(snp.location, snp %in% b$snp)
c = dplyr::filter(b, snp %in% snp.location$snp)
d = left_join(c, ann, by = "snp")
e = dplyr::select(d, snp, CHR, pos, pvalue)
colnames(e) <- c("SNP", "CHR", "BP", "P")

#output new file filtered for p-value less than 0.001
write.table(e, "/home/aly/Matrix_eQTL/Output_filteredpvalue/MEX_22.txt", quote = FALSE, row.names = FALSE, sep = "\t")
