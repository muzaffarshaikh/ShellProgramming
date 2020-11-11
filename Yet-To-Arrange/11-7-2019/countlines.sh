#echo Enter the filename
#read file
#l=`grep -c "." $file`
#echo Number of lines in $file is $l
count=0
echo Enter the filename
read file
while IFS= read -r line
do
((count++))
echo "$line"
done < "$file"
echo Number of lines in the $filr is $count