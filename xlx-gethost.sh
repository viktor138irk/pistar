#!/usr/bin/env bash

mount -o remount,rw /

sed -i "/^114.*/d" /usr/local/etc/XLXHosts.txt
echo "114;89.111.154.99;4004" >> /usr/local/etc/XLXHosts.txt

sed -i "/^391.*/d" /usr/local/etc/XLXHosts.txt
echo "391;212.3.149.253;4004" >> /usr/local/etc/XLXHosts.txt

sed -i "/^780.*/d" /usr/local/etc/XLXHosts.txt
echo "780;46.138.248.163;4004" >> /usr/local/etc/XLXHosts.txt

sed -i "/^YKT.*/d" /usr/local/etc/XLXHosts.txt
echo "YKT;89.111.154.99;4004" >> /usr/local/etc/XLXHosts.txt
echo "YKT;89.111.154.99;4004" > /root/XLXHosts.txt

sed -i "/^SMK.*/d" /usr/local/etc/XLXHosts.txt
echo "SMK;212.3.149.253;4004" >> /usr/local/etc/XLXHosts.txt
echo "SMK;212.3.149.253;4004" > /root/XLXHosts.txt

sed -i "/^ARK.*/d" /usr/local/etc/XLXHosts.txt
echo "ARK;46.138.248.163;4004" >> /usr/local/etc/XLXHosts.txt
echo "ARK;46.138.248.163;4004" > /root/XLXHosts.txt

sed -i "/^11400.*/d" /usr/local/etc/YSFHosts.txt
echo "11400;RU-C4FM YKUTIA;@DMRYKT;89.111.154.99;42000;000" >> /usr/local/etc/YSFHosts.txt
echo "11400;RU-C4FM YKUTIA;@DMRYKT;89.111.154.99;42000;000" > /root/YSFHosts.txt

sed -i "/^39100.*/d" /usr/local/etc/YSFHosts.txt
echo "39100;RU-C4FM SMOLENSK;@XLXSMK;212.3.149.253;42000;000" >> /usr/local/etc/YSFHosts.txt
echo "39100;RU-C4FM SMOLENSK;@XLXSMK;212.3.149.253;42000;000" > /root/YSFHosts.txt

sed -i "/^78000.*/d" /usr/local/etc/YSFHosts.txt
echo "78000;XLX780;XLX ARK-MSK;46.138.248.163;42000;000" >> /usr/local/etc/YSFHosts.txt
echo "78000;XLX780;XLX ARK-MSK;46.138.248.163;42000;000" > /root/YSFHosts.txt

sed -i "/^XLX_114.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_114				0000	89.111.154.99				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_114				0000	89.111.154.99				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^XLX_391.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_391				0000	212.3.149.253				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_391				0000	212.3.149.253				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^XLX_780.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_780				0000	46.138.248.163				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_780				0000	46.138.248.163				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^XLX_YKT.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_YKT				0000	89.111.154.99				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_YKT				0000	89.111.154.99				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^XLX_SMK.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_SMK				0000	212.3.149.253				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_SMK				0000	212.3.149.253				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^ARK.*/d" /usr/local/etc/DMR_Hosts.txt
echo "XLX_ARK				0000	46.138.248.163				passw0rd	62030" >> /usr/local/etc/DMR_Hosts.txt
echo "XLX_ARK				0000	46.138.248.163				passw0rd	62030" > /root/DMR_Hosts.txt

sed -i "/^114*/d" /usr/local/etc/P25Hosts.txt
echo "11400	89.111.154.99	41000" >> /usr/local/etc/P25Hosts.txt
echo "11400	89.111.154.99	41000" > /root/P25Hosts.txt

sed -i "/^391*/d" /usr/local/etc/P25Hosts.txt
echo "39100	212.3.149.253	41000" >> /usr/local/etc/P25Hosts.txt
echo "39100	212.3.149.253	41000" > /root/P25Hosts.txt

sed -i "/^780*/d" /usr/local/etc/P25Hosts.txt
echo "78000	46.138.248.163	41000" >> /usr/local/etc/P25Hosts.txt
echo "78000	46.138.248.163	41000" > /root/P25Hosts.txt

sed -i "/^HB_YKT_YAKUTIA.*/d" /usr/local/etc/DMR_Hosts.txt
echo "HB_YKT_YAKUTIA_NETWORK		2001	89.111.154.99				passw0rd	62032" >> /usr/local/etc/DMR_Hosts.txt
echo "HB_YKT_YAKUTIA_NETWORK		2001	89.111.154.99				passw0rd	62032" > /root/DMR_Hosts.txt

sed -i "/^BM_1114_.*/d" /usr/local/etc/DMR_Hosts.txt
echo "BM_1114_Russia_YKTDMR		2001	89.111.154.99				passw0rd	62032" >> /usr/local/etc/DMR_Hosts.txt
echo "BM_1114_Russia_YKTDMR		2001	89.111.154.99				passw0rd	62032" > /root/DMR_Hosts.txt

sed -i "/^DMR+_YAKUTIA.*/d" /usr/local/etc/DMR_Hosts.txt
echo "DMR+_YAKUTIA-RUSSIA-A		362823	89.111.154.99				passw0rd	62032" >> /usr/local/etc/DMR_Hosts.txt
echo "DMR+_YAKUTIA-RUSSIA-A		362823	89.111.154.99				passw0rd	62032" > /root/DMR_Hosts.txt




exit 0