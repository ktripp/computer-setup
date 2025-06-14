# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install zsh plugins
brew install zsh zsh-autocomplete zsh-syntax-highlighting zsh-autosuggestions zsh-git-prompt

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


# set up shell profile
cp zshrc ~/.zshrc
chsh -s $(which zsh)
source ~/.zshrc
