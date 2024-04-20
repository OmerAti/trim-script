#!/bin/bash
#JRodiX.Com Internet Hizmetleri Omer ATABER - By OmerAti
trimmed_amount=$(fstrim -v / | awk '{print $2, $3}')
echo "Trim islemi basariyla tamamlandi. $trimmed_amount alan temizlendi ve optimize edildi."

cat <<EOF > /etc/systemd/system/fstrim.service
[Unit]
Description=Discard unused blocks on the root filesystem

[Service]
Type=oneshot
ExecStart=/usr/sbin/fstrim -av
EOF

cat <<EOF > /etc/systemd/system/fstrim.timer
[Unit]
Description=Discard unused blocks once a week

[Timer]
OnCalendar=weekly
AccuracySec=1h
Persistent=true

[Install]
WantedBy=timers.target
EOF

systemctl daemon-reload
systemctl enable fstrim.service
systemctl enable fstrim.timer
systemctl start fstrim.timer
