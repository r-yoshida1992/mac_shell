#!bin/sh

SHELL_NAME=$(basename "$SHELL")

if [ "$SHELL_NAME" = "bash" ]; then
    echo 'export PATH=~/Documents/GitHub/mac_shell/bin:$PATH' >> ~/.bash_profile
    source ~/.bash_profile
elif [ "$SHELL_NAME" = "zsh" ]; then
    echo 'export PATH=~/Documents/GitHub/mac_shell/bin:$PATH' >> ~/.zshrc
    source ~/.zshrc
elif [ "$SHELL_NAME" = "fish" ]; then
    echo 'set -x PATH ~/Documents/GitHub/mac_shell/bin $PATH' >> ~/.config/fish/config.fish
    source ~/.config/fish/config.fish
else
    echo "Unsupported shell: $SHELL_NAME"
fi
