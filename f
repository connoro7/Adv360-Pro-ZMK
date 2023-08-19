#!/bin/bash
# Debug mode #!/bin/bash -x -v


# f.sh
# (f)lashes firmware onto Kinesis Adv360 Pro boards with a single key-press to step through each script
# Start this script before setting either board into bootloader mode.

# Clean up old firmware files and unzips new firmware
read -n 1 -p "Unpack new firmware?"

./clean_firmware && "Done"

# Wait for keypress to flash left board
read -n 1 -p "Flash left board?"

./left && "Done"

# Wait for keypress to flash right board
read -n 1 -p "Flash right board?"

./right && "Done"

