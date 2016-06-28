library(peer)
library(dplyr)

#read in expression data and create matrix
exp<-read.table('/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/7-HapMap3-pops-exp/E-MTAB-264.processed.1/CHB_p3_expression.txt',sep='\t',skip=2)
header <- read.table('/home/wheelerlab1/Data/Stranger_et_al_pop_eQTLs/7-HapMap3-pops-exp/E-MTAB-264.processed.1/CHB_p3_expression.txt',nrows=1,sep='\t')
colnames(exp) <- unlist(header)
dim(exp)
#change as needed
expmat<-as.matrix(exp[,2:81])
expmat <- t(expmat)

#pull sex information
famfile = read.table('/home/aly/Populations/CHB.fam')
samples = t(header)
samples = samples[-1,]
pulled = dplyr::filter(famfile, V1 %in% samples)
pulled = dplyr::select(pulled, V1, V5)

#create sex covariate file
expdf <- as.data.frame(expmat)
idexpdf = mutate(expdf, ID=rownames(expdf))
expids = data.frame(rownames(expmat))
colnames(expids) = "ID"
colnames(pulled) = c("ID", "sex")
sexcov = left_join(expids, pulled, by = "ID")
sc = dplyr::select(sexcov, sex)
write.table(sc, file = '/home/aly/PEER Plots/CHB.sexcov.txt', row.names = FALSE, col.names = FALSE)

model = PEER()
#include covariates
covs = read.table('/home/aly/PEER Plots/CHB.sexcov.txt', header = FALSE)
PEER_setCovariates(model, as.matrix(covs))
PEER_setPhenoMean(model,expmat)
PEER_setNk(model,10) 
PEER_update(model)

#create plots, saving factors, residuals
factors = PEER_getX(model)
write.table(factors, '/home/aly/PEER Plots/CHB_factors.sexcov.10.txt',quote=F)
weights = PEER_getW(model)
precision = PEER_getAlpha(model)
residuals = PEER_getResiduals(model)
write.table(residuals, '/home/aly/PEER Plots/CHBResiduals.sexcov.10.txt')
plot(precision) #save plot
PEER_plotModel(model) #save plot
pdf(file="/home/aly/PEER Plots/CHB.sexcov.plot.10.pdf")
PEER_plotModel(model)
dev.off()
