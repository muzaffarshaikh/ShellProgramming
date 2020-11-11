echo -n "Enter a file name : "
read file
a=0
the=0
an=0
 
# make sure file exist
if  [ ! -f $file ]
then
 echo "$file not a file!"
 exit 1
fi
 
# put while loop to read a $file
while read line
do
       #process each word 
 for w in $line 
 do
 # convert word to lowercase; so that we can count ThE, THE, the, THe etc all
 lword="$(echo $w | tr '[A-Z]' '[a-z]')"
 
 # is it 'a' article?
 [ $lword = "a" ] && (( a++ )) || :
 [ $lword = "the" ] && (( the++ )) || :
 [ $lword = "an" ] && (( an++ )) || :
 done
done < $file
 
# display stats
echo "a article occured $a times"
echo "the article occured $the times"
echo "an article occured $an times"