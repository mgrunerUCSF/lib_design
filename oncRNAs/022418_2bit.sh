#!/bin/bash

####get sequences using bed file and 2bit
twoBitToFa -noMask -bed=all_oncRNA_precise_ends_tag_overlap_hg38.bed /avicenna/genomes/hg38/hg38.2bit oncRNAs.fa

####count lengths
awk '{ print length($0); }' oncRNAs.fa | sort -n | uniq -c > lengths.txt

###note ignore short lengths, this doesnt filter out fasta titles




