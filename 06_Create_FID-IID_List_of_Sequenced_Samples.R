##change format of individuals who have been sequenced so it is the FID and IID

##open dplyr
library(dplyr)

##load in file of found sequences that don't need to be imputed
##found using lift over, TGP
setwd("/home/aly/Expression vs TGP")
##make specific to population ("CHB", "GIH", "JPT", "LWK", "MEX", "YRI")
##"MKK" will need to be entirely imputed, as no samples were sequenced
found <- read.table("CHBfound.txt", header = T)
f <- dplyr::select(found, sample)
f <- data.frame(f)
##make vector
new.variable <- as.vector(f$sample)

##load in population list created earlier
    ##had previously created this file, output of R script 02
setwd("/home/aly/Populations")
##again make specific to population
List <- read.table("CHB.list", header = F)
colnames(List) <- c("FID", "IID")
L <- data.frame(List)

##separate to make a list of those that have been sequenced
final <- L[L$IID %in% new.variable, ]

##write out to new text file containing both the FID and IID for those samples that were sequenced via TGP
write.table(final, file = "CHB_Sequenced.txt", append = FALSE, quote = FALSE, sep = "\t", eol = "\n", na = "NA", dec = ".", row.names = FALSE, col.names = FALSE, qmethod = c("escape", "double"), fileEncoding = "")

##this file then used in plink command with --remove flag
