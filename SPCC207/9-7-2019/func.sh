function CompString()
{
echo "Enter the first string"
read string1
echo "Enter the second string"
read string2
if [ $string1 == $string2 ]
	then
		echo "String is equal";
elif [ $string1 \< $string2 ]
then
	echo "string1 is less than string2"
elif [ $string1 \> $string2 ]
then
	echo "string1 is greater than string2"
fi

if [ -n string1 ]
then
	echo "The String has length greater then Zero"
elif [ -z string1 ]
then
	echo "The String has length equal to Zero"
fi
}
CompString
echo $n
echo $$
echo $#
echo $@
echo $*
echo $?
echo $!
echo $_