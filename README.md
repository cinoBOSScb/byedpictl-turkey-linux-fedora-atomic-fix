# byedpictl-turkey-fedora-atomic-fix

###  **Tested Environments**  
| Ortam       | Durum                          |
|--------------|--------------------------------|
|Fedora Kinoite| Works ✅                   |
|    Bazzite   | Works ✅                   |
|    Aurora   | Works ✅                   |

---

## 🚀 Kurulum
Download the zip and extract it to anywhere you want
Install depencies
```bash
sudo rpm-ostree install dnscrypt-proxy
sudo rpm-ostree install zenity
```
Restart so rpm-ostree can install
```bash
sudo reboot
```
After reboot go to the folder you extracted and run
```bash
./setup.sh
```
---

## Usage

`byedpictl` is the command to utilize the service.

```bash
byedpictl help
byedpictl tun start
byedpictl tun stop
byedpictl tun restart
byedpictl tun change (profile name here)
byedpictl tun status

byedpictl zenity  #Opens GUI, might not work in some Atomic Desktop forks
```
