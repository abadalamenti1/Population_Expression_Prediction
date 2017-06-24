#!/bin/bash

for pop in `cat poplist`;
do
	echo $pop
	PrediXcan.py --predict --dosages /home/aly/PrediXcan/${pop}/ --dosages_prefix ${pop}_ --samples samples_${pop}.txt --weights /home/aly/ElasticNet/YRI/Database_Files/HapMap3_YRI_elasticNet_alpha0.5_merged_weights_2016-09-20-0.5.db --output_dir YRI_db_${pop}_predicted_0.5
done
