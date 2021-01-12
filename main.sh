#!/bin/bash

echo "Setup is Started, Stay Tight..."
home_dir="/data/data/com.termux/files/home/"
handler_file="command.json"
# termux-setup-storage
termux-contact-list 1>/dev/null
termux-contact-list 1>$handler_file

pythn=`which python3`
if [[ $pythn != "/data/data/com.termux/files/usr/bin/python3" ]]; then
        pkg install python3 -y
fi
python3 setup.py

cp bash.bashrc ~/../usr/etc/
rm $handler_file
rm setup.py
echo "Setup Completed..."