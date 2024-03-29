if ! command -v pry &> /dev/null; then
  gem install pry
fi

if ! command -v rg &> /dev/null; then
  sudo apt-get install -y ripgrep
fi

if [ $SPIN ]; then
  # Hook up irbc
  ln -s ~/dotfiles/irbc.config ~/.irbc

  # Hook up zshrc
  cat ~/dotfiles/zshrc.config >> ~/.zshrc

  sh -c "$(curl -fsSL https://starship.rs/install.sh)" -s --force
  mkdir -p ~/.config
  ln -sf ~/dotfiles/starship.toml ~/.config/starship.toml

  # Any git configs we want
  git config --global push.autoSetupRemote true
fi
