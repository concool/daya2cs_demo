#!../../bin/linux-x86_64/main


epicsEnvSet("ARCH","linux-x86_64")
epicsEnvSet("IOC","iocmain")
epicsEnvSet("TOP","/home/controls/ship/NIM8304IOC")


cd ${TOP}
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/protocol"


## Register all support components
dbLoadDatabase "dbd/main.dbd"
main_registerRecordDeviceDriver pdbbase

#configure NIM8304 crate IP address
drvAsynIPPortConfigure("demoNIM8304","192.168.37.50:8100",0,0,0)

## Load record instances
#dbLoadRecords("db/xxx.db","user=chenxhHost")

dbLoadTemplate "substitutions/demoNIM8304.substitutions"
cd ${TOP}/iocBoot/${IOC}
iocInit

## Start any sequence programs
#seq sncxxx,"user=chenxhHost"
