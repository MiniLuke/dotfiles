if ! command -v pry &> /dev/null; then
  gem install pry
fi

if ! command -v rg &> /dev/null; then
  sudo apt-get install -y ripgrep
fi

if [ $SPIN ]; then
  # Hook up irbc
  ln -s ./dotfiles/.irbc ~/.irbc

  # Install oh-my-zsh
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  # Set agnoster as the theme
  sed -i 's/ZSH_THEME="[^"]*"/ZSH_THEME="agnoster"/' ~/.zshrc
fi
