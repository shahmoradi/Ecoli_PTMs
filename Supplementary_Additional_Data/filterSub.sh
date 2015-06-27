for file in MURI*.id.txt;
do

awk '/M\-2/ { print $10 }' "$file" > SubHits.txt
sort SubHits.txt | uniq -ic | sort -rn > "$(basename "$file")_SubGIs"
rm SubHits.txt

done
