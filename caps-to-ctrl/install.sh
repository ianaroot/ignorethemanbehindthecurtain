keyboard_ids=$(ioreg -n IOHIDKeyboard -r | grep -e VendorID\" -e ProductID | grep -o '\d.*')

vendor_id=$(echo $keyboard_ids | awk '{print $1}')
product_id=$(echo $keyboard_ids | awk '{print $2}')


defaults -currentHost write -g com.apple.keyboard.modifiermapping.{$vendor_id}-{$product_id}-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'
