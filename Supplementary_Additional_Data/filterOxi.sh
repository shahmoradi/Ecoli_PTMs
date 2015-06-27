for file in MURI*.id.txt;
do

awk '/M\+16/ { print $10 }' "$file" > OxiHits.txt
sort OxiHits.txt | uniq -ic | sort -rn > "$(basename "$file")_OxiGIs"
rm OxiHits.txt

done
