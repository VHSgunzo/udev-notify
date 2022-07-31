# udev-notify
* Show notifications when any USB device is plugged/unplugged

## Screenshots:
![image](https://user-images.githubusercontent.com/57139938/178160053-c31471aa-5786-4c5c-b946-3ba19294254f.png)![image](https://user-images.githubusercontent.com/57139938/178160061-19f5d212-e9b8-4ab6-b03a-f5d1e453ca22.png)

## Dependencies:
```
usbutils
libnotify
sox
espeak-ng
sed
coreutils
gawk
grep
util-linux
bash
```
## To get started:
* **Download the latest revision**
```
git clone https://github.com/VHSgunzo/udev-notify.git
```
* **Switch to tool's directory**
```
cd udev-notify
```
* **Install udev-notify**
```
make install
```
* **Or install udev-notify using your favorite AUR package manager**
```
yay --needed --noconfirm -S base-devel udev-notify-git
```
* **[Or install DEB package](https://github.com/VHSgunzo/udev-notify/releases)**
