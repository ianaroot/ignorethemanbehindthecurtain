keyboard_ids=$(ioreg -n IOHIDKeyboard -r | grep -e VendorID\" -e ProductID | grep -o '\d.*')
vendor_id_1=$(echo $keyboard_ids | awk '{print $1}')
vendor_id_2=$(echo $keyboard_ids | awk '{print $3}')
product_id_1=$(echo $keyboard_ids | awk '{print $2}')
product_id_2=$(echo $keyboard_ids | awk '{print $4}')
echo $vendor_id_1
echo $product_id_1
echo $vendor_id_2
echo $product_id_2
