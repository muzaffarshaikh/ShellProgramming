echo "Enter first number"
read a
echo "Enter second number"
read b
c=$((a%b))
echo "Therefore sum of 2 number is $c"
echo ""
echo "Do you want to go back? (yes/no)"
read back
case $back in
yes) bash calc.sh
;;
no) [*] Bye!!
;;
esac

