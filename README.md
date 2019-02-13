**Graphical Environment:**
X.org(X)
*To install it:*
```
pacman -S xorg-server xorg-xinit
```

*To run it:*
```
echo "startx" >> .xinitrc
```

**Keyboard layout**
Using xorg the config statement is in .xinitrc
In my case:
setxkbmap -layout es

**Also installed:**
i3-gaps i3-status rxvt-unicode dmenu 

**Network Manager**
Install the nm applet:
```
sudo pacman -S network-manager-applet
```

For wifi first disable dhcpcd for etheret
```
sudo systemctl disable dhcpcd@ethernet_device_name.service
```
If you need the device_name:
```
ip link
```
*Enable Network Manager service:*
```
sudo systemctl enable NetworkManager.service
```

*since we are not using yet wifi-menu, we must disable netctl*
```
sudo systemctl disable netctl-auto@wifi_device_name.service
```
**Bluetooth**
```
sudo pacman -S bluez bluez-utils blueberry
sudo systemctl enable bluetooth.service
```
**Audio**
```
sudo pacman -S alsa-utils
sudo gpasswd -a *username* audio
```
alsamixer -> config mixer

I've also needed pulseaudio for using browser audio
And pulse mixer to controll it trough there 
