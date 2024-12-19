#!/bin/bash

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root. Please run it with 'sudo'." >&2
    exit 1
fi

pip3 install colorama boto3 
chmod +x whisp
cp whisp /usr/bin 
rm setup.sh
