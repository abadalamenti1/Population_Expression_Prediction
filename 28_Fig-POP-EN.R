#redo of Fig 3B from paper
library(ggplot2)
library(dplyr)

#Read in elasticNet output for POP
alpha1 <- read.table('~/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha1_all_chr1-22.txt',header=TRUE) %>%  mutate(`1`=R2) %>% select(gene,`1`)
ngenesall <- length(unique(alpha1$gene))
ngenesall
alpha50 <- read.table('~/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0.5_all_chr1-22.txt',header=TRUE) %>% mutate(`0.50`=R2) %>% select(gene,`0.50`)
alpha0 <- read.table('~/ElasticNet/MKK/HapMap3_MKK_exp_10-foldCV_elasticNet_alpha0_all_chr1-22.txt',header=TRUE) %>% mutate(`0`= R2) %>% select(gene,`0`)

data <- inner_join(alpha0,alpha50,by='gene')
data <- inner_join(data,alpha1,by='gene')
gdata <- gather(data,alpha,R2,2:3)
ggplot(gdata, aes(y = `1` - R2, x = `1`, group=alpha, color=alpha)) + geom_point(show.legend = TRUE) + ylab(expression(paste("R"^2, " difference (LASSO - alpha)"))) + xlab(expression(paste("R"^2, " (LASSO)"))) +theme_bw(12)+ theme(legend.justification=c(0,1), legend.position=c(0,1))
ggsave("Fig-MKK-EN.pdf")
dev.off()
