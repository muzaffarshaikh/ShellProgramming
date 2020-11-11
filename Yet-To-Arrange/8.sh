echo "Enter the Pizza Parlour bill total!"
read a
echo "Enter how much % you want to calculate"
read b
percent=$(($a / $b))
echo "The $b % of the total is $percent"