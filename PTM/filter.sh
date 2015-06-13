for file in MURI*.id.txt;
do

awk '{print $9}' "$file" > Peptides.txt
awk '$1 !~ /-/' Peptides.txt > Peptides1.txt
awk '$NF !~ /-/' Peptides1.txt > Peptides2.txt
awk '(/+/ || /-/)' Peptides2.txt > PTMs.txt
sort PTMs.txt | uniq -ic | sort -rn > "$(basename "$file")_PSMs_SeparateReps"

rm Peptides.txt
rm Peptides1.txt
rm Peptides2.txt
rm PTMs.txt

done
