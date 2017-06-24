load("~/POPALL0.5.RData")

#Find R
YRIALL <- dplyr::mutate(YRIALL, R = sqrt(R2))
#can edit value (0.1-0.9)
YRIR <- dplyr::filter(YRIALL, R>0.1)
genelist <-c(YRIR$gene)

#making new data.frame for YRIR comparison with all pops
YRIALLR <- data.frame(matrix(ncol = 12, nrow = 0))
x <- c('gene','alpha','cvm','lamda.iteration','lamda.min','n.snps','R2','pval','genename','CHR','POP','R')
colnames(YRIALLR) <- x

#data.frame has filtered all populations for top R2 hits in YRI by gene
YRIALLR <- subset(POPALL, gene %in% genelist)
YRIALLR <- dplyr::mutate(YRIALLR, R = sqrt(R2))

POP_R <-dplyr::select(YRIALLR, POP, R)
POP_R <-dplyr::filter(POP_R, !is.na(R))
#can comment out if you want to include the predictive population
POP_R <-dplyr::filter(POP_R, POP!='YRI')

#Plot predictive model
ggplot(POP_R, aes(R, colour = POP)) + geom_density() + xlim(-1, 1)
