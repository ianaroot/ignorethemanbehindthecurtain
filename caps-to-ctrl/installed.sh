keyboard_ids=$(./keyboard_ids)

./keyboard_ids | while read vendor_id product_id
do
    [[ $(defaults -currentHost read -g com.apple.keyboard.modifiermapping.$vendor_id-$product_id-0) == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;
    }
)" ]];
done
