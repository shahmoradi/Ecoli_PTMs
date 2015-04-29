for file in MURIt*.id.txt;
do

awk '{print $10}' "$file" > GIs.txt
sort GIs.txt | uniq -ic | sort -rn > "$(basename "$file")_GIs_AllReps"

rm GIs.txt

done
