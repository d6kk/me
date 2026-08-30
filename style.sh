#!/data/data/com.termux/files/usr/bin/bash
# Setup storage and install packages
termux-setup-storage
apt update
apt install -y git zsh

# Install Termux Oh-My-Zsh theme
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

# Setup Zsh configuration
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
mv "$HOME/.zshrc" "$HOME/.zshrc.bak.$(date +%Y.%m.%d-%H:%M:%S)"
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"

# Install syntax highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

# Set default shell
echo zsh | chsh -s zsh 2>/dev/null || true

# Apply color and font settings
printf '0\n' | bash "$HOME/.termux/colors.sh" 2>/dev/null
printf '14\n' | bash "$HOME/.termux/fonts.sh" 2>/dev/null

# Launch Zsh
bash "$HOME/me/Welcome-massege.sh" 2>/dev/null
exec zsh -i -l
