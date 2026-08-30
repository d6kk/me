#!/data/data/com.termux/files/usr/bin/bash

termux-setup-storage

apt update
apt install -y git zsh

git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"
echo "alias chcolor='bash $HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='bash $HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

chsh -s zsh

printf '0\n' | bash "$HOME/.termux/colors.sh" 2>/dev/null
printf '14\n' | bash "$HOME/.termux/fonts.sh" 2>/dev/null

bash "$HOME/me/Welcome-massege.sh" 2>/dev/null

exec zsh -i -l
