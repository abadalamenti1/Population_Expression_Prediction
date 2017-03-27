load("~/POPALL.RData")

#Find R
YRIALL <- dplyr::mutate(YRIALL, R = sqrt(R2))
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

CHB.YRI <-dplyr::filter(POP_R, POP == 'CHB')
GIH.YRI <-dplyr::filter(POP_R, POP == 'GIH')
JPT.YRI <-dplyr::filter(POP_R, POP == 'JPT')
LWK.YRI <-dplyr::filter(POP_R, POP == 'LWK')
MEX.YRI <-dplyr::filter(POP_R, POP == 'MEX')
MKK.YRI <-dplyr::filter(POP_R, POP == 'MKK')
YRI.YRI <-dplyr::filter(POP_R, POP == 'YRI')

#Plot predictive model
ggplot(POP_R, aes(R, colour = POP)) + geom_density() + xlim(-1, 1)
