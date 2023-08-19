#!/bin/bash

# cf.sh
# Clean firmware (and unzips the new firmware, if it exists)

echo "Cleaning up old firmware files..."
rm -f ./firmware/*.uf2
echo "Done"
if [ -f "./firmware/*.uf2" ]; then
    echo "Could not clean up files, please perform manual cleanup."
    exit 1
else
    if [ -f "./firmware.zip" ]; then
        echo "Unzipping firmware..."
        unzip firmware.zip -d firmware
        echo "Done"
        rm firmware.zip
    fi
fi
