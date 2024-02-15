@echo off

cd\
cd C:\QuakeMapDev\working


echo Copying Files...
copy C:\QuakeMapDev\id1\maps\ZombieMap.map C:\QuakeMapDev\working


echo Converting map...


echo --------------QBSP--------------
C:\QuakeMapDev\tools\ericw-tools\bin\qbsp.exe ZombieMap

echo --------------VIS---------------
C:\QuakeMapDev\tools\ericw-tools\bin\vis.exe ZombieMap

echo -------------LIGHT--------------
C:\QuakeMapDev\tools\ericw-tools\bin\light.exe ZombieMap

copy ZombieMap.bsp C:\QuakeMapDev\id1\maps
copy ZombieMap.pts C:\QuakeMapDev\id1\maps
copy ZombieMap.lit C:\QuakeMapDev\id1\maps
pause
cd\
cd C:\QuakeMapDev
quakespasm-spiked-win64  +map ZombieMap
