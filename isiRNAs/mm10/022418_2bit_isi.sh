#!/bin/bash

####get sequences using bed file and 2bit
twoBitToFa -noMask -bed=isiRNA.selected.mm10.precise.repeatmasker.no-exons.bed /avicenna/genomes/mm10/mm10.2bit isiRNAs.fa

####count lengths
awk '{ print length($0); }' isiRNAs.fa | sort -n | uniq -c > lengths.txt

###note ignore short lengths, this doesnt filter out fasta titles




