keyboard_ids=$(ioreg -n IOHIDKeyboard -r | grep -e VendorID\" -e ProductID | grep -o '\d.*')
vendor_id=$(echo $keyboard_ids | awk '{print $1}')
product_id=$(echo $keyboard_ids | awk '{print $2}')

key_mappings=$(defaults -currentHost read -g "com.apple.keyboard.modifiermapping."$vendor_id"-"$product_id"-0")

if [[ $key_mappings == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;"* ]]
    then echo '0'
else
    echo '1'
fi
