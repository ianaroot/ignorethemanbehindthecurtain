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

key_mappings_1=$(defaults -currentHost read -g "com.apple.keyboard.modifiermapping."$keyboard_1"-0")
key_mappings_2=$(defaults -currentHost read -g "com.apple.keyboard.modifiermapping."$keyboard_2"-0")

if [[ $key_mappings_1 == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;"* ]] && [[ $key_mappings_2 == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;"* ]]
    then exit 0
else
    exit 1
fi
