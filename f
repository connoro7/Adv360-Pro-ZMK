#!/bin/bash
# Debug mode #!/bin/bash -x -v

# f.sh
# (f)lashes firmware onto Kinesis Adv360 Pro boards.

function confirm() {
    local prompt="${1:-Are you sure?} [y/n]: "
    local default_response="y"
    local response
    read -r -n 1 -p "${IYellow}$prompt${Color_Off}" response
    echo
    case "$response" in
    [yY] | [yY][eE][sS]) ;;
    [nN] | [nN][oO] | '')
        echo "Aborting..."
        return 1 2>/dev/null
        ;;
    *)
        echo "Invalid input. Please enter y or n."
        confirm "$prompt"
        ;;
    esac
}

# Clean up old firmware files and unzips new firmware
./clean_firmware && echo "Done" || echo "Skipped"

# Wait for confirmation to flash left board
confirm 'Flash left board?' && ./left && echo "Done" || echo "Skipped"

# Wait for confirmation to flash right board
confirm 'Flash right board?' && ./right && echo "Done" || echo "Skipped"
