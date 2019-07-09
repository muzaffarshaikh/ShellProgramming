clear
echo "____________________________________________________________"
echo "_______________________YOUR CALCULATOR______________________"
echo "------------------------------------------------------------"
echo "1 > Addition of numbers"
echo "2 > Subtraction of numbers"
echo "3 > Multiplication of numbers"
echo "4 > Modulus of numbers"
echo "5 > Division of a number"
echo "6 > Factorial of a number"
echo "7 > Swapping two numbers"
echo "8 > Check whether number is positive or not"
echo "9 > Exit session"
echo "------------------------------------------------------------"
echo "____________________________________________________________"
echo " "
echo "Choose Your option"
read option

case $option in

1)bash add.sh
;;
2)bash sub.sh
;;
3)bash mul.sh
;;
4)bash mod.sh
;;
5)bash div.sh
;;
6)bash fact.sh
;;
7)bash swap.sh
;;
8)bash postive.sh
;;
9)echo "[*] Bye.......!!"
;;
*)echo "[*] Invalid input...exiting!"
esac
