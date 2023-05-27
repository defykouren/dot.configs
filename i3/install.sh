#1/bin/bash

mkdir ~/.config/i3
cp config ~/.config/i3/.
mkdir ~/.config/i3blocks/
cp i3blocks.conf ~/.config/i3blocks/
cd ..
cp -r pictures/Background ~/Pictures/

mkdir /home/$USER/scripts
cp -r i3blocksScripts /home/$USER/scripts/

sudo pacman -Syu $(cat packageList)

cp /etc/X11/xinit/xinitrc ~/.xinitrc

echo "exec i3" >> ~/.xinitrc

sudo mkdir /etc/sddm.conf.d
cd
touch autologin.conf
echo "[Autologin]" >> autologin.conf
echo "User=" >> autologin.conf
echo "Session=" >> autologin.conf
sudo mv autologin.conf /etc/sddm.conf.d/
sudo systemctl enable --now sddm
echo " "
echo " "
echo "Please reboot the system."
