##Script that outputs the counts of modified and unmodified spectral counts for a particular mass-shift. This file does not show the odds.

for file in MURI*.id.txt_ModPepCounts_ModUnMod;
do

for i in `seq -200 -1`;

do

sumMod=0
sumTot=0


awk '$3 ~ /'$i'[A-Z.]/{print '$i'" "$1" "$2" "$3" "$4" "$5}' "$file" > N2termHits.txt

awk '{ map[$3] += $5;} END { for (i in map) { print map[i] } }' N2termHits.txt >> Data.txt
awk '{ map[$3] = $6;} END { for (i in map) { print map[i] } }' N2termHits.txt >> DataTot.txt
rm N2termHits.txt

cat Data.txt |  awk '{sum+=$1} END {print sum}' >> DataSum.txt
cat DataTot.txt |  awk '{sum+=$1} END {print sum}' >> DataTotSum.txt

rm Data.txt
rm DataTot.txt

paste DataSum.txt DataTotSum.txt | awk '{print '$i' " " $1 / ($2+1)}' >> new2.txt

rm DataSum.txt
rm DataTotSum.txt
done


for i in `seq 1 200`;

do

sumMod=0
sumTot=0


awk '$3 ~ /\+'$i'[A-Z.]/{print '$i'" "$1" "$2" "$3" "$4" "$5}' "$file" > N2termHits.txt
awk '{ map[$3] += $5;} END { for (i in map) { print map[i] } }' N2termHits.txt >> Data.txt
awk '{ map[$3] = $6;} END { for (i in map) { print map[i] } }' N2termHits.txt >> DataTot.txt
rm N2termHits.txt
cat Data.txt |  awk '{sum+=$1} END {print sum}' >> DataSum.txt
cat DataTot.txt |  awk '{sum+=$1} END {print sum}' >> DataTotSum.txt

rm Data.txt
rm DataTot.txt

paste DataSum.txt DataTotSum.txt | awk '{print '$i' " " $1 / ($2+1)}' >> new2.txt

rm DataSum.txt
rm DataTotSum.txt

done


cat new2.txt > "$(basename "$file")_filtered"
rm new2.txt

done
