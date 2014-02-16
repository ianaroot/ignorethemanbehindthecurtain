unit_dir=$(cd $(dirname $0); pwd)
extensionId=`cat $unit_dir/extension-id`

test -f "$HOME/Library/Application Support/Google/Chrome/External Extensions/"$extensionId'.json'
