bash "$HOME/me/wlc.sh"
#!/data/data/com.termux/files/usr/bin/bash
# Setup storage and install packages
termux-setup-storage
pkg install git zsh -y

# Install Termux Oh-My-Zsh theme
git clone https://github.com/Cabbagec/termux-ohmyzsh.git "$HOME/termux-ohmyzsh" --depth 1 
cp -R "$HOME/termux-ohmyzsh/.termux" "$HOME/.termux"

# Setup Zsh configuration
git clone https://github.com/ohmyzsh/ohmyzsh.git "$HOME/.oh-my-zsh" --depth 1
cp "$HOME/.oh-my-zsh/templates/zshrc.zsh-template" "$HOME/.zshrc"
sed -i '/^ZSH_THEME/d' "$HOME/.zshrc"
sed -i '1iZSH_THEME="agnoster"' "$HOME/.zshrc"

# Install syntax highlighting plugin
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$HOME/.zsh-syntax-highlighting" --depth 1
echo "source $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> "$HOME/.zshrc"

# Set default shell
echo zsh | chsh -s zsh 2>/dev/null || true

# Apply color and font settings
printf '0\n' | bash "$HOME/.termux/colors.sh"
printf '14\n' | bash "$HOME/.termux/fonts.sh"
exec zsh -i -l
exit --255
