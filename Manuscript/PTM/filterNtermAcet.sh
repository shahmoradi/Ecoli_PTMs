for file in MURI*.id.txt;
do

awk '/\..\+42/ { print $10 }' "$file" > NtermHits.txt
sort NtermHits.txt | uniq -ic | sort -rn > "$(basename "$file")_NtermGIs"
rm NtermHits.txt

done
