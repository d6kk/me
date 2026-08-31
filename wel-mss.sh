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
figlet -f standard   WELCOME
figlet -f standard DARKILLER
E
