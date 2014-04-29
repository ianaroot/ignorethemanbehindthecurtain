brew cask install flux
osascript -e "tell application \"System Events\" to make new login item at end with properties {path:\"$HOME/Applications/Flux.app\", name:\"Flux\", hidden:false}"
open -a $HOME/Applications/Flux.app
