# True if file exists and its owner matches the effective
# user id of this process.
test -O /usr/local/opt/kitout/ || \
  echo "Please install kitout to /usr/local/opt/kitout"

test -O /usr/local/opt/kitout/