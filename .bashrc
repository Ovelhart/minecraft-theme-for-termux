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

PS1='\[\e[1;31m\]->\[\e[0m\] '
echo -e "\e[6 q"
