[[ $(defaults read NSGlobalDomain KeyRepeat) 2> /dev/null = 2 &&
$(defaults read NSGlobalDomain InitialKeyRepeat 2> /dev/null) = 15 ]]  || exit 1
