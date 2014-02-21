#!../../bin/linux-x86_64/main


# Allow invocation from anywhere, including procServ
cd /home/controls/bldemo/applications/NIM8304IOC/iocBoot/iocmain

## You may have to change main to something else
## everywhere it appears in this file

< envPaths

cd ${TOP}
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/protocol"


## Register all support components
dbLoadDatabase "dbd/main.dbd"
main_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure("demoNIM8304","192.168.37.50:8100",0,0,0)

## Load record instances
#dbLoadRecords("db/xxx.db","user=chenxhHost")

dbLoadTemplate "substitutions/demoNIM8304.substitutions"
cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=chenxhHost"
