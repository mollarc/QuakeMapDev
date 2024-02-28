@echo off

cd\
cd C:\Users\molla\Documents\GitHub\QuakeMapDev\working


echo Copying Files...
copy C:\Users\molla\Documents\GitHub\QuakeMapDev\working\Spire.map C:\Users\molla\Documents\GitHub\QuakeMapDev\working


echo Converting map...


echo --------------QBSP--------------
C:\Users\molla\Documents\GitHub\QuakeMapDev\tools\ericw-tools\bin\qbsp.exe Spire

echo --------------VIS---------------
C:\Users\molla\Documents\GitHub\QuakeMapDev\tools\ericw-tools\bin\vis.exe Spire

copy Spire.bsp C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
copy Spire.pts C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
copy Spire.lit C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
pause
cd\
cd C:\Users\molla\Documents\GitHub\QuakeMapDev
quakespasm-spiked-win64  +map Spire
