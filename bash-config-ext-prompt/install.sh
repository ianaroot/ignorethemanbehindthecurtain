set -e

bash_ext_dir="$HOME/.bash_profile.d"
mkdir -p $bash_ext_dir

dir=$(cd $(dirname $0); pwd)

rm -rf "$bash_ext_dir/prompt.sh"
ln -s "$dir/prompt.sh" "$bash_ext_dir/prompt.sh"

