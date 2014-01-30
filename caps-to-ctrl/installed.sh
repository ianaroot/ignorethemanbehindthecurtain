dir=$(cd $(dirname $0); pwd)
common_functions_file="${dir}/common_functions.sh"

if [ -e "$common_functions_file" ]; then
  echo "sourcing $common_functions_file"
  source "$common_functions_file"
else
  echo "Could not find common functions"
fi

key_mappings=$(defaults -currentHost read -g "com.apple.keyboard.modifiermapping."$vendor_id"-"$product_id"-0")

if [[ $key_mappings == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;"* ]]
    then echo '0'
else
    echo '1'
fi
