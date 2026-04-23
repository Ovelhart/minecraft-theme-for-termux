# minecraft-theme-for-termux
This is a Minecraft theme repository for Termux. This theme is compatible with Termux downloaded from f-droid, GitHub, and the Play Store.

[![Stars](https://img.shields.io/github/stars/Ovelhart/minecraft-theme-for-termux?style=for-the-badge)](https://github.com/Ovelhart/minecraft-theme-for-termux)
[![Forks](https://img.shields.io/github/forks/Ovelhart/minecraft-theme-for-termux?style=for-the-badge)](https://github.com/Ovelhart/minecraft-theme-for-termux)
[![Repo Size](https://img.shields.io/github/repo-size/Ovelhart/minecraft-theme-for-termux?style=for-the-badge)](https://github.com/Ovelhart/minecraft-theme-for-termux)

<p align="center">
  <img src="https://raw.githubusercontent.com/Ovelhart/minecraft-theme-for-termux/refs/heads/main/screenshot.png" alt="Minecraft Termux Screenshot" width="400">
</p>
<h1>How to install the theme:</h1>

<p>1. update the pkg.</p>

```bash
pkg upgrade && pkg update
```

<p>2. install git.</p>

```bash
pkg install git
```
<p>3. clone the repository.</p>

```bash
git clone https://github.com/Ovelhart/minecraft-theme-for-termux.git
```
<p>4. Create the ".termux" folder if it doesn't already exist.</p>

```bash
mkdir ~/.termux
```
<p>5. Copy the file from the "colors.properties" repository folder to the ".termux" folder and restart Termux.</p>
<p>6. Create the "fastfetch" folder inside the ".config" folder.</p>

```bash
mkdir -p ~/.config/fastfetch
```
<p>7. Copy the files "config.jsonc" and "ascii.txt" to ".config/fastfetch".</p>
<p>8. Download the regular version of this font.</p>

```url
https://www.fontspace.com/minecraft-font-f28180
```
<p>9. Convert the font to TTF and rename it to "font.ttf", then move it to the ".termux" folder.</p>
<h1>If you want to run fastfetch automatically when you log into Termux, follow these instructions:</h1>
<p>1. Install bash if it's not already installed.</p>

```bash
pkg install bash
```
<p>2. Set bash as the default.</p>

```bash
chsh -s bash
```
<p>3. Check if bash is set as the default. If it is, the output will be something like "/data/data/com.termux/files/usr/bin/bash". If it doesn't appear, try setting it as the default again or updating bash.</p>

```bash
echo $SHELL
```
<p>4. Install nano if it's not already installed.</p>

```bash
pkg install nano
```
<p>5. Edit the .bashrc file.</p>

```bash
nano ~/.bashrc
```
<p>6. Add this to your .bashrc file:</p>

```bash
clear
fastfetch

# typewriter effect function
typewriter() {
    text="$1"
    delay=0.05
    for ((i=0; i<${#text}; i++)); do
        printf "%c" "${text:$i:1}"
        sleep $delay
    done
    printf "\n"
}

echo "------"
typewriter "Minecraft"
echo "------"

PS1='\[\e[1;31m\]->\[\e[0m\] '
echo -e "\e[6 q"
```
<p>6. To save, press Ctrl+X, then Y, and then Enter.</p>
<h1>How to run auto-installer.sh</h1>
<p>1. Install Git.</p>

```bash
pkg install git
```
<p>2. clone the repository.</p>

```bash
git clone https://github.com/Ovelhart/minecraft-theme-for-termux.git
```
<p>3. Give permission to the file.</p>

```bash
chmod +x minecraft-theme-for-termux/auto-installer.sh
```
<p>4. run the file.</p>

```bash
./minecraft-theme-for-termux/auto-installer.sh
```
