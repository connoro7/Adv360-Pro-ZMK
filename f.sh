# f.sh
# (f)lashes firmware onto Kinesis Adv360 Pro boards
# Start this script before setting either board into bootloader mode.

# Clean up old firmware files and unzips new firmware
read -n 1 -p "Unpack new firmware?"

./cf.sh

# Flash left board after any key is pressed
read -n 1 -p "Flash left board?"

./l.sh

echo ""

# Flash right board after any key is pressed
read -n 1 -p "Flash right board?"

./r.sh
