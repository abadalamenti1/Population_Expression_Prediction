##update position in new .bim file
#load dplyr
library("dplyr")

#read in updated .bim file with unlisted SNPs removed
bim_file <- read.table("POP_Removed_Unlifted.bim", sep = "\t")

#read in liftover output with new SNP coordinates
new_position_file <- read.table("output.bed", sep = "\t")

#organize into new .bim file
new_bim_file <- dplyr::select(bim_file, V1, V2, V3)
new_bim_file <-dplyr::mutate(new_bim_file, new_position_file$'V2')
new_bim_file <-dplyr::mutate(new_bim_file, bim_file$V5, bim_file$V6)

#write out new .bim file with updated position coordinates from liftover
write.table(new_bim_file, "POP_Removed_Unlifted_New_Position.bim", quote = FALSE, sep = "\t", row.names = FALSE, col.names = FALSE)
