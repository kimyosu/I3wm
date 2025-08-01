




#!/bin/bash
echo "instale o rofi antes :)";
echo "movendo tema do powermenu...";
sudo cp .config/rofiPowerMenu/themes/* /usr/share/rofi/themes

echo "criando a pasta em ~/.local/share"
mkdir -p ~/.local/share/fonts
echo "movendo as fontes necessarias..."
cp .config/rofiPowerMenu/fonts/* ~/.local/share/fonts
