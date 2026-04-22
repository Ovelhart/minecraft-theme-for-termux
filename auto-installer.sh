pkg upgrade && pkg update
pkg install bash -y
chsh -s bash
clear
pkg install git -y

if [ -d ~/minecraft-theme-for-termux ]; then
  rm -rf ~/minecraft-theme-for-termux
fi

git clone https://github.com/Ovelhart/minecraft-theme-for-termux.git
mkdir ~/.termux
pkg install toilet -y
pkg install fastfetch -y

clear
toilet Minecraft | lolcat
PS1='\[\e[1;31m\]->\[\e[0m\] '
echo -e "\e[6 q"
mkdir -p ~/.config/fastfetch

if [ -f ~/.termux/colors.properties ]; then
  echo "It exists, erasing..."
  rm ~/.termux/colors.properties
else
  echo "continuing..."
fi

if [ -f ~/.bashrc ]; then
  echo "It exists, erasing..."
  rm ~/.bashrc
else
  echo "continuing..."
fi

if [ -f ~/.config/fastfetch/config.jsonc ]; then
  echo "It exists, erasing..."
  rm ~/.config/fastfetch/config.jsonc
else
  echo "continuing..."
fi

if [ -f ~/.config/fastfetch/ascii.txt ]; then
  echo "It exists, erasing..."
  rm ~/.config/fastfetch/ascii.txt
else
  echo "continuing..."
fi

# remove o antigo se existir
[ -f ~/.termux/font.ttf ] && rm ~/.termux/font.ttf

# baixa o novo direto já com o nome correto
curl -L -o ~/.termux/font.ttf https://raw.githubusercontent.com/Ovelhart/minecraft-theme-for-termux/main/font/font.ttf
clear

toilet Minecraft | lolcat
mv ~/minecraft-theme-for-termux/.bashrc ~/
mv ~/minecraft-theme-for-termux/colors.properties ~/.termux/
mv ~/minecraft-theme-for-termux/config.jsonc ~/.config/fastfetch/
mv ~/minecraft-theme-for-termux/ascii.txt ~/.config/fastfetch/
termux-reload-settings
