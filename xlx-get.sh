#!/usr/bin/env bash

mount -o remount,rw /

XLXFOLDER=/xlx

mkdir -p ${XLXFOLDER}/scripts
mkdir -p ${XLXFOLDER}/temp
mkdir -p ${XLXFOLDER}/data
mkdir -p ${XLXFOLDER}/unit

wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-cron.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-getdmrid.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-gethost.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-update.sh
wget -q -N -P ${XLXFOLDER}/scripts/ https://xlx.dmrykt.ru/pistar/xlx-del.sh


ln -s ${XLXFOLDER}/scripts/xlx-cron.sh /usr/local/bin/xlx-cron
ln -s ${XLXFOLDER}/scripts/xlx-getdmrid.sh /usr/local/bin/xlx-getdmrid
ln -s ${XLXFOLDER}/scripts/xlx-gethost.sh /usr/local/bin/xlx-gethost
ln -s ${XLXFOLDER}/scripts/xlx-update.sh /usr/local/bin/xlx-update
ln -s ${XLXFOLDER}/scripts/xlx-del.sh /usr/local/bin/xlx-del

chmod +x ${XLXFOLDER}/scripts/*.sh

wget -q -N -P ${XLXFOLDER}/unit/ https://xlx.dmrykt.ru/pistar/unit/xlx.service
wget -q -N -P ${XLXFOLDER}/unit/ https://xlx.dmrykt.ru/pistar/unit/xlx.timer

exit 0
