# if ! is-macos -o ! is-executable ruby -o ! is-executable curl -o ! is-executable git; then
#   echo "Skipped: Homebrew (missing: ruby, curl and/or git)"
#   return
# fi

ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade

brew tap caskroom/cask
brew tap homebrew/dupes
brew tap homebrew/versions

# Install packages

apps=(
  bash-git-prompt
  cmake
  git
  gpg
  npm
  nvm
  php71
  pow
  tmux
  sphinx
)

brew install "${apps[@]}"

# Install packages

apps=(
  atom
  filezilla
  google-chrome
  mamp
)

brew cask install "${apps[@]}"

# export DOTFILES_BREW_PREFIX_COREUTILS=`brew --prefix coreutils`
# set-config "DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_BREW_PREFIX_COREUTILS" "$DOTFILES_CACHE"

# ln -sfv "$DOTFILES_DIR/etc/mackup/.mackup.cfg" ~
