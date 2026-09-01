##custom massage set for welcom
echo -e "\033[32mWelcome\033[0m\033[31mmassage\033[0m\033[35mdalo\033[0m"
read -p "hare:- " name
touch "$HOME/.name"
echo "$name" > "$HOME/.name"

## zsh ho to direct chalega ## 
cat <<'E'>> /data/data/com.termux/files/usr/etc/zshrc
## defult welcome massage remove ##
if [ -f "/data/data/com.termux/files/usr/etc/motd" ]; then
    rm -rf /data/data/com.termux/files/usr/etc/motd
fi
## important pkg download ##
if ! command -v neofetch > /dev/null 2>&1; then
    pkg install neofetch -y > /dev/null 2>&1
fi
## important pkg download ##
if ! command -v figlet > /dev/null 2>&1; then
    pkg install figlet -y > /dev/null 2>&1
fi
## Show welcome massage command ##
clear
neofetch
cat "$HOME/.name" | figlet -f standard
E
