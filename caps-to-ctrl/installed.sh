set -e
dir=$(cd $(dirname $0); pwd)
cd $dir

./keyboard_ids | while read vendor_id product_id
do
    [[ $(defaults -currentHost read -g com.apple.keyboard.modifiermapping.$vendor_id-$product_id-0) == *"HIDKeyboardModifierMappingDst = 2;
        HIDKeyboardModifierMappingSrc = 0;
    }
)" ]] || exit 1
done
