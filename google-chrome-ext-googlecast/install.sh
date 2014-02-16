set -e

unit_dir=$(cd $(dirname $0); pwd)
extDir="$HOME/Library/Application Support/Google/Chrome/External Extensions"
mkdir -p "$extDir"
extId=`cat $unit_dir/extension-id`
extFile=$extDir'/'$extId'.json'

# the update url was built by reverse engineering a plugin installed
# through the Chrome Store.
updateUrl='https://clients2.google.com/service/update2/crx?response=updatecheck&x=id%3D'$extId'%26uc'
echo '{"external_update_url": "'$updateUrl'"}' > "$extFile"
