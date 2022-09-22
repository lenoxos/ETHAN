# ETH internet

## Connecting to ETH internet

[IT knowledge base](https://unlimited.ethz.ch/display/itkb/Wi-Fi#WiFi-Students)

### linux

The script might not work with `NetworkManager`.
It will ask to create a conf file for wpa_supplicant instead.

Here's how to use it:

Kill `NetworkManager`

> systemd
``` bash
systemctl stop NetworkManager
```

Check what interface you're using:

``` bash
ip link
```
Which will output something like
```
1: lo: ...
2: enp4s0: ...
3: wlan0: ...
...
```
You're gonna want to look for something like `wlan0` or `wlp1s0` or `wlp2s0f3` or the like.
Copy the name of said interface. I will use `wlan0` as an example.

Initialize `wpa_supplicant` (remember to substitute `wlan0` for your interface)

``` bash
sudo wpa_supplicant -i wlan0 -c $HOME/.config/cat_installer/cat_installer.conf -B
```
Maybe wait like 5 seconds or so for it actually to complete.

Finally, set up dhcp

``` bash
sudo dhcpcd wlan0
```
Again, substitute `wlan0` for your interface name

note: if you use `NetworkManager` to connect normally
then you'll want to start the service again when you're done with the eth wlan,
e.g:
``` bash
systemctl start NetworkManager
```

## VPN

[IT knowledge Base](https://unlimited.ethz.ch/display/itkb/VPN)

### linux

Download super sketch shell script as described [here](https://unlimited.ethz.ch/display/itkb/VPN)

Binary will be installed to `/opt/cisco/anyconnect`

Execute it and use `sslvpn.ethz.ch/student-net` to connect to
