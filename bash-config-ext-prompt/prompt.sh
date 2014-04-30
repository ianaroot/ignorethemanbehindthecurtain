# include the git-prompt helpers provided with the git package
source '/usr/local/etc/bash_completion.d/git-prompt.sh'
# configure git-prompt
export GIT_PS1_SHOWDIRTYSTATE=true

function _ps1_join {
  local s=''
  for arg in $@
    do s+=$arg
  done
  echo -n $s
}

function _ps1_git_username {
  local git_user=`git config --global user.name`
  test "$git_user" && echo "$git_user" && return
  echo "No Git User"
}

dark_gray='[0;38;5;238m'
light_gray='[0;38;5;250m'
some_blue='[0;38;5;32m'
reset_color='[m'

space='\040'

line1_segments=(
  '\n'
  '\[' '\e' $some_blue '\]'
  # git user
  '`_ps1_git_username`'
  # git ref
  '`__git_ps1`'
  $space
  '\[' '\e' $reset_color '\]'
  # working dir
  '\w'
  '\n'
  '\[' '\e' $light_gray '\]'
  '$'
  '\[' '\e' $reset_color '\]'
  $space
)

export PS1="`_ps1_join ${line1_segments[@]}`"
