set -e

bash_ext_dir="$HOME/.bash_profile.d"
mkdir -p $bash_ext_dir

dir=$(cd $(dirname $0); pwd)

rm -rf "$bash_ext_dir/sgu-key.sh"
ln -s "$dir/sgu-key.sh" "$bash_ext_dir/sgu-key.sh"
