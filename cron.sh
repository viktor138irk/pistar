#!/usr/bin/env bash

mount -o remount,rw /

XLXFOLDER=/xlx

if [ -f /usr/local/sbin/pistar-daily.cron ]; then
	sed -i "s/^\/usr\/local\/sbin\/HostFilesUpdate.sh.*/\/usr\/local\/sbin\/HostFilesUpdate.sh;xlx-gethost;xlx-rw;xlx-getdmrid-force;/" /usr/local/sbin/pistar-daily.cron
fi

if [ ! -L /etc/systemd/system/xlx.service ]; then
	ln -s ${XLXFOLDER}/unit/xlx.service /etc/systemd/system/xlx.service
fi

if [ ! -L /etc/systemd/system/xlx.timer ]; then
	ln -s ${XLXFOLDER}/unit/xlx.timer /etc/systemd/system/xlx.timer
fi

systemctl daemon-reload
systemctl enable xlx.timer &>/dev/null
systemctl start xlx.timer

exit 0
