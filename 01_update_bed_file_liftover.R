##update .bed file for liftOver
#load dplyr
library("dplyr")

#read in .bim file
bim_file <- read.table("/home/aly/LWK/Original_Genotype_Data/hapmap3_r2_b36_fwd.consensus.qc.poly.bim", sep = "\t")

#new order needs to be chr, position, position+1, rsid
new_bim <- dplyr::select(bim_file, V1, V4)
new_bim <- dplyr::mutate(new_bim, l2 = V4+1)
rsid <- dplyr::select(bim_file, V2)
new_bim <- dplyr::mutate(new_bim, rsid$V2)
new_bim$V1 <- sub("^", "chr", new_bim$V1)

#write out new .bed
write.table(new_bim, '/home/aly/LWK/liftOver/LWK_liftOver.bed', quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)
