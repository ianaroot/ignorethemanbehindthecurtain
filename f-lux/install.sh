brew cask install f-lux
osascript -e "tell application \"System Events\" to make new login item at end with properties {path:\"$HOME/Applications/Flux.app\", name:\"Flux\", hidden:false}"
