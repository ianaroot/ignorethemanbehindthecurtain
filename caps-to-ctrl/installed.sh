vendor_ids=$(./vendor_ids)
product_ids=$(./product_ids)

keyboard_1=$(echo $vendor_ids $product_ids | awk '{print ($1, $3)}' | tr '\ ' -)
keyboard_2=$(echo $vendor_ids $product_ids | awk '{print ($2, $4)}' | tr '\ ' -)

if (($(echo $vendor_ids | wc -w)<2))
    then
    keyboard_1=$(echo $vendor_ids $product_ids | awk '{print ($1, $2)}' | tr '\ ' -)
fi

key_mappings_1=$(defaults -currentHost read -g "com.apple.keyboard.modifiermapping."$keyboard_1"-0")
key_mappings_2=$(defaults -currentHost read -g "com.apple.keyboard.modifiermapping."$keyboard_2"-0")

[[ $key_mappings_1 == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;"* ]] && [[ $key_mappings_2 == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;"* ]]
