n=0
f=1 
on=0

echo "Enter number to find factorial : "
read n

on=$n

while [ $n -ge  1 ]
do
f=`expr $f \* $n`
n=`expr $n - 1`
done

echo "Factorial of $on is $f"

echo "Do you want to go back...? (yes/no)"
read n
case $n in
yes)bash calc.sh
;;
no)echo "[*] Bye....!!"
esac 

