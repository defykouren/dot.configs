#!/bin/bash

#~~~~~~~~~~bashrc~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rsync -av ~/.bashrc bashrc/.

#~~~~~~~~~~~~~i3~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
rsync -av ~/.config/i3/config i3/.
rsync -av ~/.config/i3blocks/i3blocks.conf i3/.
rsync -av --delete ~/scripts/i3blocksScripts i3/.
rsync -av ~/.config/picom.conf i3/.
