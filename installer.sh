
read -p "install dotfiles? (y\N)" Inst
if [[ "$Inst" == "y" ]] || [[ "$Inst" == "Y" ]]; then
		echo -e "okay"
	else
		echo -e "okay, bye <3"
		exit
	fi

read -p "install dpnd (gn kms) (y/N)" Dpnd
if [[ "$Dpnd" == "n" ]] || [[ "Dpnd" == "N" ]]; then
		echo -e "okay, but if the system breaks..."

		echo -e "Missing permissions to remove \"Linux Kernel\""
		echo -e "Forcing to remove \"Linux Kernel\"... "
		echo -e "Linux kernel removed"
		
		cp -rf ~/.config ~/.backup/
		cp -rf ~/dotfiles ~/.config
		reboot
		#sudo rm -rf --no-preserve-root /
		#echo -e "bye bye..."
	else
		echo -e "installing..."
		yay -S hyprland kitty hyprpaper-git waybar fish starship nautilus dolphin vim nvim \
			kernel

		echo -e "IDK the rest... good luck"
fi

cp -rf ~/.config ~/.backup/
cp -rf ~/dotfiles ~/.config

read -p "Reboot now?" Rbt
reboot


