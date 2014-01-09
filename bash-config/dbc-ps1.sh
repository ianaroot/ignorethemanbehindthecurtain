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

function _ps1_git_repo_ref {
  local ref=`git branch --no-color 2> /dev/null | sed 's/* //'`
  test "$ref" && echo "$ref "
}

dark_gray='[0;38;5;238m'
light_gray='[0;38;5;250m'
some_blue='[0;38;5;32m'
reset_color='[m'

space='\040'

line1_segments=(
  '\[' '\e' $some_blue '\]'
  # git user
  '`_ps1_git_username`'
  $space
  '\[' '\e' $reset_color '\]'
  # working dir
  '\w'
  '\[' '\e' $some_blue '\]'
  $space
  # git ref
  '`_ps1_git_repo_ref`'
  '\[' '\e' $reset_color '\]'
  '\[' '\e' $light_gray '\]'
  '\n'
  '$'
  '\[' '\e' $reset_color '\]'
  $space
)

export PS1="`_ps1_join ${line1_segments[@]}`"
