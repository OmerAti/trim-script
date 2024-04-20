Trim Otomatik Temizlik Scripti
Bu bash scripti, SSD (Solid-State Drive) üzerinde Trim işlemini otomatik olarak çalıştırır. Trim, SSD'de kullanılmayan veri bloklarını temizleyerek yazma hızını artırır ve SSD'nin ömrünü uzatır.

Özellikler
Otomatik Trim işlemi
Temizlenen alan miktarının gösterilmesi
Otomatik olarak systemd servis dosyasının oluşturulması ve etkinleştirilmesi

Kullanım
trim.sh scriptini çalıştırarak Trim işlemini başlatın.
Temizlenen alan miktarı, Trim işlemi tamamlandığında gösterilecektir.

Repository'yi klonlayın:

'git clone https://github.com/OmerAti/trim-script.git'

Scripte çalıştırma izni verin:

chmod +x trim.sh

Scripti çalıştırın:

./trim.sh

Katkıda Bulunma
Hatalarınızı veya önerilerinizi Issues bölümünde paylaşabilirsiniz.
Pull request'lerle katkıda bulunarak scripti geliştirebilirsiniz.
