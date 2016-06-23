library(peer)

##put full path to population expression file in both lines 4 and 5
exp<-read.table('CHB_p3_expression.txt',sep='\t',skip=2)
header <- read.table('CHB_p3_expression.txt',nrows=1,sep='\t')
colnames(exp) <- unlist(header)
dim(exp)
#$change second value in line 9 to correspond with the second value given from line 7
expmat<-as.matrix(exp[,2:83])
expmat <- t(expmat) #transpose so genes in columns

model = PEER()
PEER_setPhenoMean(model,expmat)
##can manipulate nk value here (10, 20, 30)
PEER_setNk(model,10) 
PEER_update(model)

factors = PEER_getX(model)
##change file path in line 20 for where you want factors saved
write.table(factors, 'JPT_factors.txt',quote=F)
weights = PEER_getW(model)
precision = PEER_getAlpha(model)
residuals = PEER_getResiduals(model)
plot(precision) #save plot
PEER_plotModel(model) #save plot

##save plot using this method, change file path in line 28 for where you want plots saved
pdf(file="CHBplot.10.pdf")
PEER_plotModel(model)
dev.off()
