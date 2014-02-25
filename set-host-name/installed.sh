unit_dir=$(cd $(dirname $0); pwd)

# Get this machine's mac address
mac_address=`ifconfig en0 | grep '\bether\b' | sed 's/.ether //'`
# Look up it's machine number
host_num=`cat $unit_dir/host-numbers-to-mac-addresses | grep '^\d' | grep $mac_address | cut -d ' ' -f 1`

test $host_num || {
  echo "Unknown host number for this mac address ($mac_address). Is this a new machine?"
  # We still exit with success because this unit is optional
  exit
}

test "dbc${host_num}.local" = `hostname`
