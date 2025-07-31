#!/usr/bin/env bash

mount -o remount,rw /

XLXFOLDER=/xlx
DMRIDSFILE=/usr/local/etc/DMRIds.dat
XLXFILETIMEOLD=0
DMRFILETIMEOLD=0
DMRTFileOld=0
XLXFILETIME=0
DMRFILETIME=0
DMRTFile=0

wget -q -N -P ${XLXFOLDER}/data/ https://xlx.dmrykt.ru/pistar/DMRIdsYKT.dat
wget -q -N -P ${XLXFOLDER}/data/ https://xlx.dmrykt.ru/pistar/DMRIds.dat

cp ${XLXFOLDER}/data/DMRIds.dat ${XLXFOLDER}/temp/DMRIds.dat
sed -i "/^103.*/d" ${XLXFOLDER}/temp/DMRIds.dat
cat ${XLXFOLDER}/temp/DMRIds.dat ${XLXFOLDER}/data/DMRIdsYKT.dat > ${DMRIDSFILE}

exit 0
