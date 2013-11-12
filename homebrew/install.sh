# Gaurd against exisiting brew install
which -s brew && exit
# Installs homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"
