@echo off

cd\
cd C:\QuakeMapDev\working


echo Copying Files...
copy C:\QuakeMapDev\working\SpireOliverChen2.map C:\QuakeMapDev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeMapDev\tools\ericw-tools\bin\qbsp.exe SpireOliverChen2

echo --------------VIS---------------
C:\QuakeMapDev\tools\ericw-tools\bin\vis.exe SpireOliverChen2

copy SpireOliverChen2.bsp C:\QuakeMapDev\id1\maps
copy SpireOliverChen2.pts C:\QuakeMapDev\id1\maps
copy SpireOliverChen2.lit C:\QuakeMapDev\id1\maps
pause
cd\
cd C:\QuakeMapDev
quakespasm-spiked-win64  +map SpireOliverChen2
