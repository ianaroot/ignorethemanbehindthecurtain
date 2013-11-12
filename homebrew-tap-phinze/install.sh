# Gaurd against re-adding the phinze-cask tap
test -d '/usr/local/Library/Taps/phinze-cask' && exit
# Add the repo that contains cask
brew tap phinze/homebrew-cask
