#!/usr/bin/env bash


wget -P /home/pi-star/ https://xlx.dmrykt.ru/pistar/xlx-del.sh &>/dev/null
wget -P /home/pi-star/ https://xlx.dmrykt.ru/pistar/xlx-get.sh &>/dev/null

chmod +x /home/pi-star/xlx-*.sh

/home/pi-star/xlx-del.sh
/home/pi-star/xlx-get.sh



echo "Progress: 1/5"
xlx-cron

echo "Progress: 2/5"
xlx-gethost

echo "Progress: 3/5"
xlx-getdmrid

echo "Progress: 4/5"
xlx-update

echo "Progress: 5/5"
rm -rf /home/pi-star/xlx-*.sh
rm -rf /home/pi-star/xlx.sh

echo "-----<===== FINISH =====>-----"

exit 0