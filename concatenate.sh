#!/bin/bash

IFS=$'\n'

head -n 1 HapMap3_CHB_exp_10-foldCV_elasticNet_alpha1_chr1_2016-09-29.txt > header

head -n 1 HapMap3_CHB_elasticNet_alpha1_weights_chr1_2016-09-29.txt > weightheader


for i in 0 0.5 1;
do
 	cat HapMap3_CHB_exp_10-foldCV_elasticNet_alpha${i}_chr*.txt >o
    grep -v gene o > p
    cat header p > HapMap3_CHB_exp_10-foldCV_elasticNet_alpha${i}_all_chr1-22.txt
    rm o p
    cat HapMap3_CHB_elasticNet_alpha${i}_weights_chr*.txt >o
        grep -v gene o > p
        cat weightheader p > HapMap3_CHB_elasticNet_alpha${i}_weights_all_chr1-22.txt
        rm o p
done
