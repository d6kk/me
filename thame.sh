#!/data/data/com.termux/files/usr/bin/bash

# Setup storage and install packages
termux-setup-storage
apt update
apt install -y git zsh

# Install Termux Oh-My-Zsh theme
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1 2>/dev/null || true
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

# Setup Zsh configuration
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1 2>/dev/null || true
[ ! -f "$HOME/.zshrc" ] && cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="robbyrussell"/' "$HOME/.zshrc"
echo "alias chcolor='bash $HOME/.termux/colors.sh'" >> "$HOME/.zshrc"
echo "alias chfont='bash $HOME/.termux/fonts.sh'" >> "$HOME/.zshrc"

# Install syntax highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1 2>/dev/null || true
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

# Set default shell
echo zsh | chsh -s zsh 2>/dev/null || true

# Apply color and font settings
printf '0\n' | bash "$HOME/.termux/colors.sh" 2>/dev/null
printf '14\n' | bash "$HOME/.termux/fonts.sh" 2>/dev/null

# Launch Zsh
bash "$HOME/me/Welcome-massege.sh" 2>/dev/null
exec zsh -i -l
