dir=$(cd $(dirname $0); pwd)
product_id="${dir}/product_id.sh"
vendor_id="${dir}/vendor_id.sh"

if [ -e "$vendor_id" ] && [ -e "$product_id" ]; then
  echo "sourcing $vendor_id"
  source "$vendor_id"
  echo "sourcing $product_id"
  source "$product_id"
else
  echo "Could not find vendor_id & product_id scripts"
fi

vendor_id_1=$(echo $vendor_ids | awk '{print $1}')
vendor_id_2=$(echo $vendor_ids | awk '{print $2}')
product_id_1=$(echo $product_ids | awk '{print $1}')
product_id_2=$(echo $product_ids | awk '{print $2}')

function map_keys {
defaults -currentHost write -g com.apple.keyboard.modifiermapping."$1"-"$2"-0 -array-add '<dict><key>HIDKeyboardModifierMappingDst</key><integer>2</integer><key>HIDKeyboardModifierMappingSrc</key><integer>0</integer></dict>'
}

map_keys $vendor_id_1 $product_id_1
map_keys $vendor_id_2 $product_id_2
