Predicting Gene Regulation in Diverse Global Populations

Introduction

Most studies focus on populations of European ancestry. While genomic research has broadened knowledge on human genetics, work is needed to expand this knowledge to more diverse groups, otherwise an entire breadth of useful information is missing.

Objective

We are working to expand genetic predictors of gene expression in additional world populations using SNP data alongside gene expression levels from the third phase of the International HapMap Project.

Populations include East African, West African, East Asian, and Mexican ancestry.
Elastic net modeling is used to select genotypes and weights to best predict expression of each gene using the glmnet package for R.
Methods

A large portion of phenotypic variability in disease risk is due to regulatory variants which regulate gene expression levels. PrediXcan is a gene-based association method, testing the mediating effects of gene expression levels by quantifying association between genetically regulated expression levels (GReX) and the phenotypic trait of interest. Gene expression can be decomposed into three basic components: what is genetically determined (GReX), what is altered by the phenotypic trait of interest, and remaining factors (including environment)

Future Applications

We hope to interpret results to answer:

Are predictors similar among diverse populations, or unique?
Can we better predict gene expression when samples from diverse populations are combined rather than modeled singly?
When testing predicted expression for associated traits, are new genes implicated, or were the genes previously found in European cohorts?
The hope is to advance biological knowledge of the underlying mechanisms of disease risk not assessed in GWAS studies alone. PrediXcan provides direction of effect, which may yield opportunities for therapeutic development and drug targets.

