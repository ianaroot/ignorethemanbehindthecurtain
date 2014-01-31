dir=$(cd $(dirname $0); pwd)
common_functions_file="${dir}/common_functions.sh"

if [ -e "$common_functions_file" ]; then
  echo "sourcing $common_functions_file"
  source "$common_functions_file"
else
  echo "Could not find common functions"
fi

defaults -currentHost write -g com.apple.keyboard.modifiermapping.{$vendor_id}-{$product_id}-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'
