##create a list of unlisted snps (unlifted) to then remove using plink
#load dpylr
library("dplyr")

#read in unlifted.bed
unlifted_file <- read.table("unlifted.bed", sep = "\t")

#create list
unlifted <- dplyr::select(unlifted_file, V4)

#write out list
write.table(unlifted, 'Unlifted_SNPs.txt', quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)
