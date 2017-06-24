#!/usr/bin/python
'''This python script takes the UMich imputed vcf files as input, 
removes SNPs with R2<0.8, finds the rsID for each SNP, and makes output files 
for each autosome for PrediXcan:
chr${i}.dosage.txt.gz
samples.txt
dose allele is Allele2, see https://github.com/hakyimlab/PrediXcan/blob/master/Software/HOWTO-beta.md'''

import gzip
import numpy as np
import re

##make dictionary: keys->positions values->rsids
snpfile = "/home/aly/MKK_redo/MatrixeQTL/SNPs_Location/MKK_22.SNP_Location.txt.gz"
posdict = {}
for line in gzip.open(snpfile):
    arr = line.strip().split()
    posdict[arr[2]] = arr[0]

chrfile = "/home/aly/MKK_redo/MKK_filtered_chr22.recode.vcf.gz"

# filter out comment lines using a list comprehension p. 171 Adv Python
datalines = [l for l in gzip.open(chrfile) if not l.startswith('#')]

# pull header line to get sample ids
headerline = [l for l in gzip.open(chrfile) if l.startswith('#CHROM')]
header = headerline[0].strip().split() #only one line should match #CHROM
ids = header[9:]
outsamples = open("/home/aly/PrediXcan/MKK/MKK.samples.txt","w")
outsamples.write("\n".join(ids))
outsamples.close()

# get dosage file data
outdosage = gzip.open("/home/aly/PrediXcan/MKK/MKK_22.dosage.txt.gz","wb")
for line in datalines:
    arr = line.strip().split()
    (chr, pos, id, ref, alt, qual, filter, info, format) = arr[0:9]     
    gt_dosagerow = arr[9:]
    #see http://www.python-course.eu/lambda.php for details
    dosagerow = map(lambda x : float(x.split(":")[1]), gt_dosagerow) #lambda function to split each info entry and collect the dosage
    dosagearr = np.array(dosagerow) #make numpy array for easy math
    freqalt = round(sum(dosagearr)/(len(dosagearr)*2),4) #calc ALT allele freq (I found that ALT is not always the minor allele)
    dosages = ' '.join(map(str,dosagerow))
    output = 'chr' + chr + ' ' + id + ' ' + pos + ' ' + ref + ' ' + alt + ' ' + str(freqalt) + ' ' + dosages + '\n'
    outdosage.write(output)

outdosage.close()
