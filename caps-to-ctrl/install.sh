vendor_ids=$(source vendor_ids.sh)
product_ids=$(source product_ids.sh)

keyboard_1=$(echo $vendor_ids $product_ids | awk '{print ($1, $3)}' | tr '\ ' -)
keyboard_2=$(echo $vendor_ids $product_ids | awk '{print ($2, $4)}' | tr '\ ' -)

# http://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool
function map_keys {
defaults -currentHost write -g com.apple.keyboard.modifiermapping."$1"-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'
}

map_keys $keyboard_1
map_keys $keyboard_2
