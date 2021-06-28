if ! command -v pry &> /dev/null; then
  gem install pry
fi

if ! command -v rg &> /dev/null; then
  sudo apt-get install -y ripgrep
fi

if ! command -v bat &> /dev/null; then
  sudo apt-get install -y bat
fi

if [ $SPIN ]; then
  ln -s ./.irbc ~/.irbc
fi
