function CompString()
{
local string1="$1";
local string2="$2";
if [ $string1 == $string2 ]
	then
		echo "String is equal";
	else
		echo "String is not equal";
fi
}
CompString
