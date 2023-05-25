#1/bin/bash
git clone https://github.com/defykouren/dot.configs.git
cd dot.configs/i3

cp config ~/.config/i3/ 
cp i3blocks.conf ~/.config/i3blocks/


mkdir /home/$USER/scripts
cp i3blocksScripts /home/$User/scripts/


