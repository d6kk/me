# Requaments : 2GB plus storages
# install Thame
* select colour   0 #auto
* select font    14 #auto

      pkg install git -y && git clone https://github.com/d6kk/me && bash $HOME/me/style.sh

# Set Welcome Massage 
### Zsh For this ⤵️
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
### zsh file use in bash
    ## bashprofile ##
    cat <<"E">> ~/.bashprofile
    if [ -f "$HOME/.bashrc" ]; then
        source ~/.bashrc
    fi
    E
    ## bashrc ##
    cat <<'E'>> ~/.bashrc
    if [ -f "$PREFIX/etc/zshrc" ]; then
        source $PREFIX/etc/zshrc
    fi
    E
    source ~/.bashprofile

### bash For this ⤵️
    ## bash ho to direct chalega ##
    ## bashrc ##
    cat <<'E'>> ~/.bashrc
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
    ## bashprofile ##
    cat <<"E">> ~/.bashprofile
    if [ -f "$HOME/.bashrc" ]; then
        source ~/.bashrc
    fi
    E
    source ~/.bashprofile

## Tips (See Termux Wiki)

Use two-finger pinch to adjust font size. Termux use combination with volume keys to emulate some functions in shell:

* `VolDown+C`: `Ctrl+C`, send SIGINT to interrupt current process

* `VolDown+D`: `Ctrl+D`, EOF logout current session

* `VolDown+E`: `Ctrl+E`, move cursor to end of line in shell

* `VolDown+L`: `Ctrl+L`, clear terminal screen

* `VolDown+Z`: `Ctrl+Z`, send SIGTSTP to suspend current process

You can `VolUp+Q` to bring up an extra key bar, but you can also use combinations below:

* `VolUp+W/A/S/D`: Move cursor up/left/down/right

* `VolUp+E`: ESC

* `VolUp+T`: TAB

* `VolUp+Digits`: F1-F9, F10 is 0

* `VolUp+L`: pipe character "|"

* `VolUp+H`: tilt character "~"

* `VolUp+U`: underscore "_"

* `VolUp+V`: Volume control

For better text input experience, swipe left on the `VolUp+Q` key bar.

## Examples

Tango color scheme + agnoster oh-my-zsh theme + Ubuntu font:

![](./termux-ohmyzsh.png)

![Screenshot 1](./Screenshot_20230706_144535_Termux.jpg)

![Screenshot 2](./Screenshot_20230706_144610_Termux.jpg)
