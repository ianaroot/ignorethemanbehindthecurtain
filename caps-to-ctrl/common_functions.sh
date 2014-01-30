keyboard_ids=$(ioreg -n IOHIDKeyboard -r | grep -e VendorID\" -e ProductID | grep -o '\d.*')
vendor_id=$(echo $keyboard_ids | awk '{print $1}')
product_id=$(echo $keyboard_ids | awk '{print $2}')
