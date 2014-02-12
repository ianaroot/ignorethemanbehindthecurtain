dir=$(cd $(dirname $0); pwd)
product_id="${dir}/product_id.sh"
vendor_id="${dir}/vendor_id.sh"

if [ -e "$vendor_id" ] && [ -e "$product_id" ]; then
  source "$vendor_id"
  source "$product_id"
else
  echo "Could not find vendor_id & product_id scripts"
fi

keyboard_1=$(echo $vendor_ids $product_ids | awk '{print ($1, $3)}' | tr '\ ' -)
keyboard_2=$(echo $vendor_ids $product_ids | awk '{print ($2, $4)}' | tr '\ ' -)

# http://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool
function map_keys {
defaults -currentHost write -g com.apple.keyboard.modifiermapping."$1"-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'
}

map_keys $keyboard_1
map_keys $keyboard_2
