id    Sam_01      Sam_02      Sam_03
Snp_01        2       0       2

2) SNP Location File
snp       chr     pos
Snp_01        chr1        721289

Output: Two separate .txt files, formatted similarly to the above examples

Usage:
    python SNPs.py [Merged Chr File] [Output SNP File] [Output SNP Location File]
Example:
    python SNPs.py GIH_22_HWE.recode.vcf.gz GIH_22.SNP.txt GIH_22.SNP_Location.txt
'''

import gzip
import sys

mergedfile = sys.argv[1]
outfile1 = sys.argv[2]
outfile2 = sys.argv[3]


outsnps = open(outfile1, "wb")
outloc = open(outfile2, "wb")

##create header for SNP Location file
head2 = "snp\tchr\tpos"
outloc.write(head2 + "\n")

##create header for SNP file
mfile = gzip.open(mergedfile, "r")
header = mfile.readline()
splitheader = header.split()
splitheader = str(splitheader[9:])
splitheader = splitheader.replace("'", "")
splitheader = splitheader.replace("]", "")
splitheader = splitheader.replace("[", "")
splitheader = splitheader.replace(" ", "")
splitheader = splitheader.replace(",", "\t")
head = "id\t" + splitheader
outsnps.write(head + "\n")

#filter out comment lines using a list comprehension
#loop to write out to files
impdatalines = [l for l in mfile if not l.startswith('#')]
for line in impdatalines:
    arr = line.strip().split()
    gt_dosagerow = arr[9:]
    dosagerow = map(lambda x : x.split(":")[1], gt_dosagerow)
    dosagerow = str(dosagerow).replace("[", "")
    dosagerow = dosagerow.replace("]", "")
    dosagerow = dosagerow.replace("'", "")
    dosagerow = dosagerow.replace(" ", "")
    dosagerow = dosagerow.replace(",", "\t")
    rsid = arr[2]
    chr = arr[0]
    pos = arr[1]
    outsnps.write(rsid+"\t"+dosagerow+"\n")
    outloc.write(rsid+"\tchr"+chr+"\t"+pos+"\n")

outsnps.close()
outloc.close()
