##Load dplyr
library(dplyr)

##First read in population data from expression file
setwd("/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/7-HapMap3-pops-exp/E-MTAB-264.processed.1")
#Change to make population specific
##***_p3_expression.txt
CHB_EXP <- read.table("CHB_p3_expression.txt", sep = "\t")


##Then read in 1000 Genomes Project data
##Change directory
setwd("/home/wheelerlab1/Data/1000_genomes_phase3")
Genome_All <- read.table("integrated_call_samples_v3.20130502.ALL.panel",header = T)

#transpose the data so it is in the same format
tCHB <-t(CHB_EXP)
tCHB2 <- tCHB[,1]
CHBlist <- data.frame(tCHB2)
colnames(CHBlist)<-c("sample")
a<-mutate(CHBlist, TGP=CHBlist$sample %in% Genome_All$sample, pop="CHB")
