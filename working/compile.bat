@echo off

cd\
cd C:\QuakeMapDev\working


echo Copying Files...
copy C:\QuakeMapDev\working\SpireOliverChen.map C:\QuakeMapDev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeMapDev\tools\ericw-tools\bin\qbsp.exe SpireOliverChen

echo --------------VIS---------------
C:\QuakeMapDev\tools\ericw-tools\bin\vis.exe SpireOliverChen

copy SpireOliverChen.bsp C:\QuakeMapDev\id1\maps
copy SpireOliverChen.pts C:\QuakeMapDev\id1\maps
copy SpireOliverChen.lit C:\QuakeMapDev\id1\maps
pause
cd\
cd C:\QuakeMapDev
quakespasm-spiked-win64  +map SpireOliverChen
