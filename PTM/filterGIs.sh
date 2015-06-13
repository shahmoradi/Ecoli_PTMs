for file in *_PSMs.id.txt;
do

awk '{print $10}' "$file" |sort|uniq -d|grep -F -f - "$file" >> "$(basename "$file")_GIs" 

done
