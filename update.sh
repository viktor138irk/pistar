#!/usr/bin/env bash

mount -o remount,rw /

XLXFOLDER=/xlx

wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-cron.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-del.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-getdmrid.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-gethost.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-update.sh

chmod +x ${XLXFOLDER}/scripts/*.sh

wget -q -N -P ${XLXFOLDER}/unit/ https://xlx.dmrykt.ru/pistar/unit/xlx.service
wget -q -N -P ${XLXFOLDER}/unit/ https://xlx.dmrykt.ru/pistar/unit/xlx.timer

exit 0
