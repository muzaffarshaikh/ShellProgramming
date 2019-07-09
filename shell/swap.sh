temp=0
echo "Enter value of A"
read a
echo "Enter value of B"
read b

echo "BEFORE SWAPPING A = $a"
echo "BEFORE SWAPPING B = $b"

temp=$a
a=$b
b=$temp

echo "AFTER SWAPPING A = $a"
echo "AFTER SWAPPING B = $b"

echo "Do you want to go back...? (yes/no)"
read n
case $n in
yes)bash calc.sh
;;
no)echo "[*] Bye....!!"
esac 

