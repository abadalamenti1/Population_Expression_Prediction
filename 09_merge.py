#!/usr/bin/python
'''Merge 1000 genomes vcf file with UMich Imputation Server Results vcf file.
Assumes individuals in the two files are different, but SNPs overlap.
Output: dosages of overlap SNPs in .vcf.gz format

Usage:
python merge.py [1000gfile] [imputedfile] [outfile]

Example:
python merge.py CHB_22.recode.vcf.gz chr22_removedsnps.vcf.gz CHB_merge_chr22.vcf.gz
'''

import gzip
import sys

tgpfile = sys.argv[1]
impfile = sys.argv[2]
outfile = sys.argv[3]

## filter out comment lines using a list comprehension p. 171 Adv Python
impdatalines = [l for l in gzip.open(impfile) if not l.startswith('#')]

## make 3 dictionary of imputed data:
## 1. keys->positions values->dosages
## 2. keys->positions values->ref allele
## 3. keys->positions values->alt allele
dosdict = {}
refdict = {}
altdict = {}
for line in impdatalines:
    arr = line.strip().split() #make each line a list
    refdict[arr[1]] = arr[3] #index 1 is position, index 3 is ref allele
    altdict[arr[1]] = arr[4] #index 1 is position, index 3 is alt allele
    gt_dosagerow = arr[9:]
    #see http://www.python-course.eu/lambda.php for details:
    dosagerow = map(lambda x : x.split(":")[0] + ":" + x.split(":")[1], gt_dosagerow) #lambda function to keep genotype and dosage
    #dosagerow = map(lambda x : x.split(":")[1], gt_dosagerow) #lambda function to only keep dosage
    dosdict[arr[1]] = dosagerow #add dosages to dosdict

## combine IIDs to make new header row
impheaderline = [l for l in gzip.open(impfile) if l.startswith('#CHROM')]
impheader = impheaderline[0].strip().split() #only one line should match #CHROM
impids = impheader[9:]
impIID = map(lambda x : x.split("_")[1], impids) #get IID only, remove FID
tgpheaderline = [l for l in gzip.open(tgpfile) if l.startswith('#CHROM')]
tgpheader = tgpheaderline[0].strip().split() #only one line should match #CHROM
tgpIID = tgpheader[9:]
IIDs = tgpIID + impIID 
preheader = "#CHROM\tPOS\tID\tREF\tALT\tQUAL\tFILTER\tINFO\tFORMAT\t"
header = preheader + '\t'.join(IIDs) + '\n'

outdosage = gzip.open(outfile,"wb")
outdosage.write(header)

## make list of data lines in 1000g file
tgpdatalines = [l for l in gzip.open(tgpfile) if not l.startswith('#')]
for line in tgpdatalines:
    arr = line.strip().split()
    (chr, pos, id, ref, alt, qual, filter, info, format) = arr[0:9]
    geno = arr[9:]
    dosages = map(lambda x : x + ':' + str(sum(float(i) for i in (x.split("|")))), geno) #add dosages to genotypes
    #dosages = map(lambda x : sum(float(i) for i in (x.split("|"))), geno) #only keep dosages
    format = 'GT:DS'
    if pos in dosdict and ref == refdict[pos] and alt == altdict[pos]: #check imp dictionaries for same position and alleles
        impdos = dosdict[pos]
        outstring = '\t'.join(arr[0:8]) + '\t' + format + '\t' + '\t'.join(str(i) for i in dosages) + '\t' + '\t'.join(str(i) for i in impdos) + '\n'
        outdosage.write(outstring) #only write snps in both vcf files
    
outdosage.close()
