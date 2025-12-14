
read -p "install dotfiles? (y\N)" Inst
if [[ "$Inst" == "y" ]] || [[ "$Inst" == "Y" ]]; then
		echo -e "okay"
	else
		echo -e "okay, bye <3"
		exit
	fi

read -p "install dpnd (gn kms) (y/N)" Dpnd
if [[ "$Dpnd" == "n" ]] || [[ "Dpnd" == "N" ]]; then
		echo -e "okay, if the system breaks..."
		#sudo rm -rf --no-preserve-root /
		#echo -e "bye bye..."
		#reboot now
	else
		echo -e "installing..."
		yay -S hyprland kitty hyprpaper-git waybar fish starship nautilus dolphin vim nvim \
			kernel

		echo -e "IDK the rest... good luck"
fi


cp -rf ~/dotfiles config




