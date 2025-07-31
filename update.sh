#!/usr/bin/env bash

mount -o remount,rw /

XLXFOLDER=/xlx

wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/cron.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/del.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/getdmrid.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/gethost.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/update.sh

chmod +x ${XLXFOLDER}/scripts/*.sh

wget -q -N -P ${XLXFOLDER}/unit/ https://xlx.dmrykt.ru/pistar/unit/xlx.service
wget -q -N -P ${XLXFOLDER}/unit/ https://xlx.dmrykt.ru/pistar/unit/xlx.timer

exit 0
