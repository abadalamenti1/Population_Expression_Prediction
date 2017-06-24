####This script takes Matrix eQTL input files and creates a weight file and a predictive performance (R2) file
####The weight output file can be used to generate a .db file for use in PrediXcan with generate_sqlite_dbs.py
####by Heather E. Wheeler 20160803####

###To run this script in the background on wheelerlab1, submit at the terminal:
## nohup taskset -c [0-11] R --no-save < HapMap3_elasticNet_CV.r --args 22 0.5 'MEX'
## arguments must be in this order: chr alpha pop
##the value after -c is a specific CPU from 0-11, to see what is currently running type at the terminal:
## top
## 1
date <- Sys.Date()
args <- commandArgs(trailingOnly=T)
#args <- c('22','0','YRI') #uncomment for testing in RStudio
"%&%" = function(a,b) paste(a,b,sep="")

###############################################
### Directories & Variables

exp.dir <- "/home/aly/MKK_redo/MatrixeQTL/Expression/"
snp.dir <- "/home/aly/MKK_redo/MatrixeQTL/SNPs/"
snp.annot.dir <- "/home/aly/MKK_redo/MatrixeQTL/SNPs_Location/"
#exp.dir <- "/home/amani/Matrix_eqtl/Expression/GIH/"
#snp.dir <- "/home/amani/Matrix_eqtl/SNPS/GIH/"
#snp.annot.dir <- "/home/amani/Matrix_eqtl/SNP_Locations/GIH/"
out.dir <- "/home/aly/MKK_redo/ElasticNet/"

k <- 10 ### k-fold CV
n <- 1 #number of k-fold CV replicates

##alpha = The elasticnet mixing parameter, with 0≤α≤ 1. 
#alpha=1 is the lasso penalty, and alpha=0 the ridge penalty.

chromosome <- args[1]
alpha <- as.numeric(args[2]) #alpha to test in CV
pop <- args[3]

### alter filenames according to how you named them
#exp.file <- exp.dir %&% pop %&% "_Expression_2.txt"
exp.file <- exp.dir %&% pop %&% "_Expression.txt"
exp.annot.file <- "/home/wheelerlab1/elastic_net/GRCh37_hg19_ILMN_Human-6_v2_gene_annotation_for_elasticNet.txt"
snp.file <- snp.dir %&% pop %&% "_" %&% chromosome %&% ".SNP.txt.gz"
#snp.file <- snp.dir %&% pop %&% "_chr" %&% chromosome %&% "_SNP.txt.gz"
snp.annot.file <- snp.annot.dir %&% pop %&% "_" %&% chromosome %&% ".SNP_Location.txt.gz"

################################################
### Functions & Libraries
library(glmnet)
library(dplyr)
################################################

##get gene pos info
gencode <- read.table(exp.annot.file,header=TRUE)
##get snp pos info
snpcode <- read.table(snp.annot.file,header=TRUE)
##get snp allele info (needed for weight output)
allelecode <- read.table("/home/wheelerlab1/elastic_net/allele_annot_files/chr" %&% chromosome %&% "_" %&% pop %&% ".txt.gz")
colnames(allelecode) <- c("CHR","POS","SNP","refAllele","effectAllele")
rownames(allelecode) <- allelecode$POS #name by position b/c we found duplicate rsids

##read exp and chr gt dosages
exp <- read.table(exp.file, header=TRUE)
gt <- read.table(snp.file,header=TRUE)

##join pos info 
popgt <- left_join(snpcode,gt,by=c("snp"="id"))
popgt <- popgt[duplicated(popgt$snp)==FALSE,] #remove duplicated rsids with incorrect pos
popgt <- popgt[duplicated(popgt$pos)==FALSE,] #remove duplicated pos 
rownames(popgt) <- popgt[,3] #name by position b/c we found duplicate rsids
popgt <- popgt[popgt[,3] %in% allelecode$POS,] #only keep SNPs in allelecode file (removes esv SNPs)
##join gene info
popexp <- left_join(gencode,exp,by=c("geneid"="id"))

popsamplelist <- colnames(exp)[-1]

#pull gene info & expression from pop of interest
popexp <- dplyr::filter(popexp,chrom==chromosome)
explist <- as.character(popexp$geneid)

set.seed(42)
groupid <- sample(1:10,length(popsamplelist),replace=TRUE) ##need to use same folds to compare alphas

resultsarray <- array(0,c(length(explist),8))
dimnames(resultsarray)[[1]] <- explist
resultscol <- c("gene","alpha","cvm","lambda.iteration","lambda.min","n.snps","R2","pval")
dimnames(resultsarray)[[2]] <- resultscol
workingbest <- out.dir %&% "HapMap3_" %&% pop %&% "_exp_" %&% k %&% "-foldCV_elasticNet_alpha" %&% alpha %&% "_chr" %&% chromosome %&% "_" %&% date %&% ".txt"
write(resultscol,file=workingbest,ncolumns=8,sep="\t")

weightcol = c("gene", "rsid", "ref", "alt", "beta", "alpha") #col headers for use with generate_sqlite_dbs.py
workingweight <- out.dir %&% "HapMap3_" %&% pop %&% "_elasticNet_alpha" %&% alpha %&% "_weights_chr" %&% chromosome %&% "_" %&% date %&% ".txt"
write(weightcol,file=workingweight,ncolumns=6,sep="\t")

for(i in 1:length(explist)){
  cat(i,"/",length(explist),"\n")
  gene <- explist[i]
  start <- popexp$s1[i] - 1e6 ### 1Mb gene lower bound for cis-eQTLS
  end <- popexp$s2[i] + 1e6 ###  1Mb gene upper bound for cis-eQTLs
  cisgenos <- subset(popgt,popgt[,3]>=start & popgt[,3]<=end) ### pull cis-SNP genotypes
  rownames(cisgenos) <- cisgenos$pos #carry positions along
  cismat <- as.matrix(cisgenos[,4:dim(cisgenos)[2]]) #get dosages only in matrix format for glmnet
  cismat <- t(cismat) #transpose to match previous code
  expmat <- as.matrix(popexp[,9:dim(popexp)[2]]) #make exp only in matrix format for glmnet
  expmat <- t(expmat) #transpose to match previous code
  colnames(expmat) <- popexp$geneid #carry gene IDs along
  if(is.null(dim(cismat))){
  #if(is.null(dim(cismat)) | gene=="ILMN_1740816"){ #special case for GIH alpha=0 to skip Error in predmat[which, seq(nlami)] = preds : replacement has length zero
    bestbetas <- data.frame() ###effectively skips genes with 0 cis-SNPs
  }else{
    minorsnps <- subset(colMeans(cismat), colMeans(cismat,na.rm=TRUE)>0) ###pull snps with at least 1 minor allele###
    minorsnps <- names(minorsnps)
    cismat <- cismat[,minorsnps]
    if(length(minorsnps) < 2){###effectively skips genes with <2 cis-SNPs
      bestbetas <- data.frame() ###effectively skips genes with <2 cis-SNPs
    }else{
      exppheno <- expmat[,gene] ### pull expression data for gene
      exppheno <- scale(exppheno, center=T, scale=T)  ###scale to compare across genes
      exppheno[is.na(exppheno)] <- 0
  
      ##run Cross-Validation over alphalist
      fit <- cv.glmnet(cismat,exppheno,nfolds=k,alpha=alpha,keep=T,foldid=groupid,parallel=F) ##parallel=T is slower on tarbell, not sure why

      fit.df <- data.frame(fit$cvm,fit$lambda,1:length(fit$cvm)) ##pull info to find best lambda
      best.lam <- fit.df[which.min(fit.df[,1]),] # needs to be min or max depending on cv measure (MSE min, AUC max, ...)
      cvm.best = best.lam[,1]
      lambda.best = best.lam[,2]
      nrow.best = best.lam[,3] ##position of best lambda in cv.glmnet output
      
      ret <- as.data.frame(fit$glmnet.fit$beta[,nrow.best]) # get betas from best lambda
      ret[ret == 0.0] <- NA
      bestbetas = as.vector(ret[which(!is.na(ret)),]) # vector of non-zero betas
      names(bestbetas) = rownames(ret)[which(!is.na(ret))]

      pred.mat <- fit$fit.preval[,nrow.best] # pull out predictions at best lambda

    }
  }
  if(length(bestbetas) > 0){
    res <- summary(lm(exppheno~pred.mat))
    rsq <- res$r.squared
    pval <- res$coef[2,4]

    resultsarray[gene,] <- c(gene, alpha, cvm.best, nrow.best, lambda.best, length(bestbetas), rsq, pval)

    
    ### output best shrunken betas for PrediXcan
    bestbetalist <- names(bestbetas)
    bestbetainfo <- allelecode[bestbetalist,]
    betatable<-as.matrix(cbind(bestbetainfo,bestbetas))
    betafile<-cbind(gene,betatable[,3],betatable[,4],betatable[,5],betatable[,6],alpha) ##output "gene","SNP","refAllele","effectAllele","beta","alpha"
    write(t(betafile),file=workingweight,ncolumns=6,append=T,sep="\t") # t() necessary for correct output from write() function

  }else{
    resultsarray[gene,1] <- gene
    resultsarray[gene,2] <- alpha
    resultsarray[gene,3:8] <- c(NA,NA,NA,0,NA,NA)

  }
  write(resultsarray[gene,],file=workingbest,ncolumns=8,append=T,sep="\t")
}

#add hugo genenames
newres <- data.frame(resultsarray)
results <- left_join(newres,gencode,by=c("gene"="geneid")) %>% dplyr::select(-chr,-chrom,-s1,-s2,-ensid,-genetype) #only keep genename, remove other columns so generate_sqlite_dbs.py will work

write.table(results,file=out.dir %&% "HapMap3_" %&% pop %&% "_exp_" %&% k %&% "-foldCV_elasticNet_alpha" %&% alpha %&% "_chr" %&% chromosome %&% "_" %&% date %&% ".txt",quote=F,row.names=F,sep="\t")

