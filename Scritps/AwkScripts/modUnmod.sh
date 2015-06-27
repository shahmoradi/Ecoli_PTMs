## Given the counts of modified peptide counts in one file and unmodified peptide counts in another file, this script clubs these 2 into 1 file with last 2 columns being modified and unmodified counts of the peptide in consideration.

for file in MURI*.id.txt_ModPepCounts;

do

awk 'NR==FNR {h[$1$2] = $4; next} {print $1,$2,$3,$4,h[$1$2]}' "$(basename "$file")_UnModPepCounts" "$file" > "$(basename "$file")_ModUnMod"

done
