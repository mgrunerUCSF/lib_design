#!/bin/bash

####get sequences using bed file and 2bit
twoBitToFa -noMask -bed=isiRNA.selected.hg38-PDX.precise.repeatmasker.no-exons.bed /avicenna/genomes/hg38/hg38.2bit isiRNAs.fa

####count lengths
awk '{ print length($0); }' isiRNAs.fa | sort -n | uniq -c > lengths.txt

###note ignore short lengths, this doesnt filter out fasta titles




