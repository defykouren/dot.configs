#1/bin/bash

sudo pacman -Syu $(cat packageList)

mkdir ~/.config/i3
rsync -av config ~/.config/i3/.
rsync -av  picom.conf ~/.config/
mkdir ~/.config/i3blocks/
rsync -av i3blocks.conf ~/.config/i3blocks/
cd ..
cp -r pictures/Background ~/Pictures/

mkdir /home/$USER/scripts
mkdir /home/$USER/scripts/i3blocksScripts
rsync -av  i3blocksScripts/ /home/$USER/scripts/i3blocksScripts/
sudo chmod +x /home/$USER/scripts/i3blocksScripts/*

cp ../bashrc/.bashrc /home/$USER/.

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
