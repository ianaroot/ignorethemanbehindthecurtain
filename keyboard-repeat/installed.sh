[[ $(defaults read NSGlobalDomain KeyRepeat) == 2 &&
$(defaults read NSGlobalDomain InitialKeyRepeat) == 15 ]] || exit 1
