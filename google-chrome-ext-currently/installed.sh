unit_dir=$(cd $(dirname $0); pwd)
extId=`cat $unit_dir/extension-id`

test -f "$HOME/Library/Application Support/Google/Chrome/External Extensions/"$extId'.json'
