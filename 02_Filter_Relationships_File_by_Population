##load dplyr
library(dplyr)

##load in relationships file
setwd("/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/HapMap3-genotypes/")
relationships <- read.table("relationships_w_pops_121708.txt", header = T)

##filter by population
##CHB, GIH, JPT, LWK, MEX, MKK, YRI
setwd("/home/aly/Populations")
CHB <- dplyr::filter(relationships, population == "CHB")

#shorten table to only include FID and IID columns
CHB1 <- dplyr::select(CHB, FID, IID)

##write out to list file
write.table(CHB1, file = "CHB.list", append = FALSE, quote = FALSE, sep = "\t", eol = "\n", na = "NA", dec = ".", row.names = FALSE, col.names = FALSE, qmethod = c("escape", "double"), fileEncoding = "")
