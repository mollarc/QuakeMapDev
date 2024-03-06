@echo off

cd\
cd C:\Users\molla\Documents\GitHub\QuakeMapDev\working


echo Copying Files...
copy C:\Users\molla\Documents\GitHub\QuakeMapDev\working\SpireOliverChen.map C:\Users\molla\Documents\GitHub\QuakeMapDev\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\molla\Documents\GitHub\QuakeMapDev\tools\ericw-tools\bin\qbsp.exe SpireOliverChen

echo --------------VIS---------------
C:\Users\molla\Documents\GitHub\QuakeMapDev\tools\ericw-tools\bin\vis.exe SpireOliverChen

copy SpireOliverChen.bsp C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
copy SpireOliverChen.pts C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
copy SpireOliverChen.lit C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
pause
cd\
cd C:\Users\molla\Documents\GitHub\QuakeMapDev
quakespasm-spiked-win64  +map SpireOliverChen
