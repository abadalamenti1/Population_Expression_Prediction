##Portion used for QC

#3. Recalculate individual call rates after removing SNPs with call rates <99%
plink --bfile N88_Recluster_TOP_20150911_FinalReport --geno 0.01 --make-bed --out N88_Recluster_TOP_20150911_FinalReport.geno0.01
### 30486 variants removed due to missing genotype data (--geno).
### 933707 variants and 1145 people pass filters and QC.
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --missing --out N88_Recluster_TOP_20150911_FinalReport.geno0.01
### Total genotyping rate is 0.999497.
### --missing: Sample missing data report written to
### N88_Recluster_TOP_20150911_FinalReport.geno0.01.imiss, and variant-based
### missing data report written to
### N88_Recluster_TOP_20150911_FinalReport.geno0.01.lmiss.

### looks great, all individuals now have >99.2% call rates (see 03_GWAS_QC_plots.Rmd output)

#4. Calculate HWE statistics to flag SNPs later
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --hardy --out N88_Recluster_TOP_20150911_FinalReport.geno0.01
### 1842/932292 SNPs (0.2%) have P<1e-06, remove next

#5. LD prune (rm 1 SNP if r2>0.3 in 50 SNP window) for relationship check and heterozygosity calculation
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --indep-pairwise 50 5 0.3 --out N88_Recluster_TOP_20150911_FinalReport.geno0.01

#5. Relationship check
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --extract N88_Recluster_TOP_20150911_FinalReport.geno0.01.prune.in --genome --min 0.05 --out N88_Recluster_TOP_20150911_FinalReport.geno0.01.LD0.3
### checked for expected duplicates and known hapmap relationships and found 8 pairs of unexpected duplicates in 03_GWAS_QC_plots.Rmd, made list of one of a known duplicate pair, hapmap samples, and all 16 unexpected duplicates. Rerun relationship check with these excluded.
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --extract N88_Recluster_TOP_20150911_FinalReport.geno0.01.prune.in --remove hapmapDuplicateList.txt --genome --min 0.05 --out N88_Recluster_TOP_20150911_FinalReport.geno0.01.LD0.3.rmKnownDupsHapmap 
### remove one of pair w/pi-hat > 0.05 (keep sample with audiometry if possible), run full IBD analysis:
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --extract N88_Recluster_TOP_20150911_FinalReport.geno0.01.prune.in --remove hapmapDuplicate_pihat0.05_exclusion_list.txt --genome --out N88_Recluster_TOP_20150911_FinalReport.geno0.01.LD0.3.rmKnownDupsHapmap.rmPIHAT0.05

#5. Check heterozygosity (across all autosomal SNPs) -- look at that distribution across individuals to check for and rm outliers (F: mean +/-3 sd), see 03_GWAS_QC_plots.Rmd.
plink --bfile N88_Recluster_TOP_20150911_FinalReport.geno0.01 --het --extract N88_Recluster_TOP_20150911_FinalReport.geno0.01.prune.in --remove hapmapDuplicate_pihat0.05_exclusion_list.txt --out N88_Recluster_TOP_20150911_FinalReport.geno0.01.LD0.3.rmKnownDupsHapmap.rmPIHAT0.05
### --extract: 294247 variants remaining.
### --remove: 1036 people remaining.
### Total genotyping rate in remaining samples is 0.999575.
### 294247 variants and 1036 people pass filters and QC.
### --het: 282186 variants scanned, report written to
### N88_Recluster_TOP_20150911_FinalReport.geno0.01.LD0.3.rmKnownDupsHapmap.rmPIHAT0.05.het
