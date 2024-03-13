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

<<<<<<< Updated upstream
copy SpireOliverChen.bsp C:\QuakeMapDev\id1\maps
copy SpireOliverChen.pts C:\QuakeMapDev\id1\maps
copy SpireOliverChen.lit C:\QuakeMapDev\id1\maps
=======
echo -------------LIGHT--------------
C:\Users\molla\Documents\GitHub\QuakeMapDev\tools\ericw-tools\bin\light.exe SpireOliverChen

copy SpireOliverChen.bsp C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
copy SpireOliverChen.pts C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
copy SpireOliverChen.lit C:\Users\molla\Documents\GitHub\QuakeMapDev\id1\maps
>>>>>>> Stashed changes
pause
cd\
cd C:\QuakeMapDev
quakespasm-spiked-win64  +map SpireOliverChen
