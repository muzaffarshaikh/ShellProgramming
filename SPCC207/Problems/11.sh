pause(){
  read -p "Press [Enter] key to continue..." fackEnterKey
}

pizza(){
	echo "320 cal"
        pause
}
burger(){
	echo "435 cal"
        pause
}
salad(){
	echo "10 cal"
        pause
}
pasta(){
	echo "55 cal"
        pause
}
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~"	
	echo " M A I N - M E N U"
	echo "~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Pizza"
	echo "2. Burger"
	echo "3. Salad"
	echo "4. Pasta"
	echo "5. Exit"
}

read_options(){
	local choice
	read -p "Enter choice [ 1 - 3] " choice
	case $choice in
		1) pizza ;;
		2) burger ;;
		3) salad ;;
		4) pasta ;;
		5) exit 0;;
		*) echo -e "${RED}Error...${STD}" && sleep 2
	esac
}
trap '' SIGINT SIGQUIT SIGTSTP
while true
do
 
	show_menus
	read_options
done