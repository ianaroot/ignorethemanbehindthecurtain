vendor_ids=$(./vendor_ids)
product_ids=$(./product_ids)

keyboard_1=$(echo $vendor_ids $product_ids | awk '{print ($1, $3)}' | tr '\ ' -)
keyboard_2=$(echo $vendor_ids $product_ids | awk '{print ($2, $4)}' | tr '\ ' -)

if (($(echo $vendor_ids | wc -w)<2))
    then
    keyboard_1=$(echo $vendor_ids $product_ids | awk '{print ($1, $2)}' | tr '\ ' -)
fi

# http://apple.stackexchange.com/questions/13598/updating-modifier-key-mappings-through-defaults-command-tool
function map_keys {
defaults -currentHost write -g com.apple.keyboard.modifiermapping."$1"-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'
}

map_keys $keyboard_1
map_keys $keyboard_2
