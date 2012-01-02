#!/bin/sh

echo "auto eth0" >> $1/etc/network/interfaces
echo "iface eth0 inet static" >> $1/etc/network/interfaces
echo "address 192.168.0.3" >> $1/etc/network/interfaces
echo "netmask 255.255.255.0" >> $1/etc/network/interfaces


echo "alias l='ls -CF'" >> $1/etc/profile
echo "alias la='ls -A'" >> $1/etc/profile
echo "alias ll='ls -alF'" >> $1/etc/profile
echo "alias ls='ls --color=auto'" >> $1/etc/profile

echo "export PS1=\"[\W]\\$ \"" >> $1/etc/profile

sed -i 's/root::/root:gxIH2TYOMdU2w:/g' $1/etc/shadow


cp -r /home/julien/Downloads/ipython-0.12/ $1/root/


exit 0
