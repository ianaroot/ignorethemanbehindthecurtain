# Rbenv autocomplete and shims
eval "$(rbenv init -)"
# Path for RBENV
PATH="$HOME/.rbenv/bin:$PATH"
rbenv rehash
gem query --name-matches '^bundler$' --installed > /dev/null
