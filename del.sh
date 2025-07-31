#!/usr/bin/env bash

mount -o remount,rw /

systemctl disable ykt.timer ykt.service &>/dev/null
systemctl stop ykt.timer ykt.service &>/dev/null

if [ -L /etc/systemd/system/ykt.service ]; then
    unlink /etc/systemd/system/ykt.service
fi
if [ -L /etc/systemd/system/ykt.timer ]; then
    unlink /etc/systemd/system/ykt.timer
fi

systemctl daemon-reload

if [ -f /usr/local/sbin/pistar-daily.cron ]; then
    sed -i "s/^\/usr\/local\/sbin\/HostFilesUpdate.sh.*/\/usr\/local\/sbin\/HostFilesUpdate.sh/" /usr/local/sbin/pistar-daily.cron
fi

find /usr/local/bin/ -type l -name "ykt-*" -delete

if [ -d /xlx ]; then
    rm -rf /tmp
fi

wget -O /usr/local/etc/DMRIds.dat https://xlx.dmrykt.ru/pistar/DMRIds.dat

# Old files
if [ -f /etc/cron.d/ykt-cron ]; then
    rm -rf /etc/cron.d/ykt-cron
fi
if [ -f /usr/local/bin/ykt-del ]; then
    rm -rf /usr/local/bin/ykt-del
fi
if [ -f /usr/local/bin/ykt-getdmrid ]; then
    rm -rf /usr/local/bin/ykt-getdmrid
fi
if [ -f /usr/local/bin/ykt-gethost ]; then
    rm -rf /usr/local/bin/ykt-gethost
fi
if [ -f /usr/local/bin/ykt-update ]; then
    rm -rf /usr/local/bin/ykt-update
fi
if [ -f /usr/local/etc/DMRIdsYKT.dat ]; then
    rm -rf /usr/local/etc/DMRIdsYKT.dat
fi
if [ -f /usr/local/etc/DMRIds.dat-export ]; then
    rm -rf /usr/local/etc/DMRIds.dat-export
fi

exit 0
