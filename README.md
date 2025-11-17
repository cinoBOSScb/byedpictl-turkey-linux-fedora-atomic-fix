# byedpictl-turkey-fedora-atomic-fix

### 🐧 **Test Edilen Ortamlar**  
| Ortam       | Durum                          |
|--------------|--------------------------------|
|Fedora Kinoite| Çalışıyor ✅                   |
|    Bazzite   | Çalışıyor ✅                   |
|    Aurora   | Çalışıyor ✅                   |

---

## 🚀 Kurulum
GitHub üzerinden repo'yu uygun konuma klonlayın.
```bash
curl -fsSL https://raw.githubusercontent.com/cinoBOSScb/byedpictl-turkey-linux-fedora-atomic-fix/refs/heads/master/curl.sh | bash
```
Klasörün İçine girin
```bash
cd ~/.local/share/byedpi-turkey-linux-fedora-atomic-fix
```
Gerekli Paketlerin Yüklenmesi
```bash
sudo rpm-ostree install dnscrypt-proxy
sudo rpm-ostree install zenity
```
Makineyi yeniden başlatın (ostree paketlerinin kurulması için)
```bash
sudo reboot
```
Makine yeniden başladıktan sonra klasörün içine tekrar girin
```bash
cd ~/.local/share/byedpi-turkey-linux-fedora-atomic-fix
```
Kurulum.sh dosyasını çalıştırın
```bash
./kurulum.sh
```
tespit edilen dağıtım fedora mı denince evet yazıp enter'a tıklayın ve kurulum sihirbazını izleyin

Kurulum bittikten sonra son olarak bu komutu girin
```bash
sudo systemctl enable byedpi-start
```

---

## 🖥️ Kullanım

`byedpictl` komutlarının tamamını kullanabilirsiniz:

```bash
byedpictl help
byedpictl tun start
byedpictl tun stop
byedpictl tun restart
byedpictl tun change [profil-ismi] # profil değiştirir
byedpictl tun status

byedpictl zenity   # grafik arayüzü açar
```
