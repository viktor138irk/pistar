#!/usr/bin/env bash

mount -o remount,rw /

systemctl disable xlx.timer xlx.service &>/dev/null
systemctl stop xlx.timer xlx.service &>/dev/null

if [ -L /etc/systemd/system/xlx.service ]; then
    unlink /etc/systemd/system/xlx.service
fi
if [ -L /etc/systemd/system/xlx.timer ]; then
    unlink /etc/systemd/system/xlx.timer
fi

systemctl daemon-reload

if [ -f /usr/local/sbin/pistar-daily.cron ]; then
    sed -i "s/^\/usr\/local\/sbin\/HostFilesUpdate.sh.*/\/usr\/local\/sbin\/HostFilesUpdate.sh/" /usr/local/sbin/pistar-daily.cron
fi

find /usr/local/bin/ -type l -name "xlx-*" -delete

if [ -d /xlx ]; then
    rm -rf /tmp
fi

wget -O /usr/local/etc/DMRIds.dat https://xlx.dmrykt.ru/pistar/DMRIds.dat

# Old files
if [ -f /etc/cron.d/xlx-cron ]; then
    rm -rf /etc/cron.d/xlx-cron
fi
if [ -f /usr/local/bin/xlx-del ]; then
    rm -rf /usr/local/bin/xlx-del
fi
if [ -f /usr/local/bin/xlx-getdmrid ]; then
    rm -rf /usr/local/bin/xlx-getdmrid
fi
if [ -f /usr/local/bin/xlx-gethost ]; then
    rm -rf /usr/local/bin/xlx-gethost
fi
if [ -f /usr/local/bin/xlx-update ]; then
    rm -rf /usr/local/bin/xlx-update
fi
if [ -f /usr/local/etc/DMRIdsYKT.dat ]; then
    rm -rf /usr/local/etc/DMRIdsYKT.dat
fi
if [ -f /usr/local/etc/DMRIds.dat-export ]; then
    rm -rf /usr/local/etc/DMRIds.dat-export
fi

exit 0
