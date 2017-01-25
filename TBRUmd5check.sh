#! /bin/bash 

for datafile in *.gz
do
md5sum $datafile >> md5check.txt
done


cat TBRUfiles1.txt | tr -d '\r' | while read LINE; do ln -s /nearline/sherman/ExpressionData/RNAseq/TBRURNA1-28225197/FASTQfiles/$LINE ~/TBRUrnaseqInfo/forGEO/$LINE;done

cat TBRU1names.txt | while read LINE; do ln -s /nearline/sherman/ExpressionData/RNAseq/TBRU\ RNAseq/TBRURNA1-28225197/results/align/$LINE.genomic.bam ./results/align;done

