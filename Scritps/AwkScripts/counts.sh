## Separately creates a file that has only UNmodified counts, as the total number of counts minus the modified version of the spectra (for a particular mass-shift) is NOT true unmodified counts.
for file in MURI*.id.txt_ModPepCounts;
do
awk '$3 !~ /[0-9]/ {print $1 " " $2 " " $3 " " $4 " " $5}' "$file" > "$(basename "$file")_UnModPepCounts" 
done
