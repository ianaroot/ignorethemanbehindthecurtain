#ioreg -n IOHIDKeyboard -r: displays io kit registry, filtered by IOHIDKeyboard.
#-r flag shows the subtrees that match the given filter
#from man pages: 'defaults' [-currentHost | -host <hostname>] write <domain> <key> <value> => renames old_key to new_key


vendor_id=$(ioreg -n IOHIDKeyboard -r | grep -e VendorID\" | grep -o '\d.*')
product_id=$(ioreg -n IOHIDKeyboard -r | grep -e ProductID | grep -o '\d.*')
defaults -currentHost write -g com.apple.keyboard.modifiermapping."$vendor_id"-"$product_id"-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>9</integer></dict>'
