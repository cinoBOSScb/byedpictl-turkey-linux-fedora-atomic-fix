# byedpictl-turkey-fedora-atomic-fix

### 🐧 **Test Edilen Ortamlar**  
| Ortam       | Durum                          |
|--------------|--------------------------------|
|Fedora Kinoite| Çalışıyor ✅                   |
|    Bazzite   | Çalışıyor ✅                   |
|    Aurora   | Çalışıyor ✅                   |

---

## 🚀 Kurulum
GitHub üzerinden repo'yu uygun konuma zip olarak indirin ve ayıklayın
Gerekli Paketlerin Yüklenmesi
```bash
sudo rpm-ostree install dnscrypt-proxy
sudo rpm-ostree install zenity
```
Makineyi yeniden başlatın (ostree paketlerinin kurulması için)
```bash
sudo reboot
```
Makine yeniden başladıktan sonra klasörün içine girin ve Kurulum.sh dosyasını çalıştırın
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
