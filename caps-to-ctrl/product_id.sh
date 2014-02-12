product_ids=$(ioreg -n IOHIDKeyboard -r | grep -e ProductID | grep -o '\d.*')
