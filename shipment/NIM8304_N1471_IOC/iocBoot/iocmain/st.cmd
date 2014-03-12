#!../../bin/linux-x86_64/main


epicsEnvSet("ARCH","linux-x86_64")
epicsEnvSet("IOC","iocmain")
epicsEnvSet("TOP","/home/controls/bldemo/shipment/NIM8304_N1471_IOC")


cd ${TOP}
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/protocol"


## Register all support components
dbLoadDatabase "dbd/main.dbd"
main_registerRecordDeviceDriver pdbbase

#configure NIM8304 crate IP address
drvAsynIPPortConfigure("demoNIM8304","192.168.37.50:8100",0,0,0)

#configure N1471 to be a separate TCP/IP connection
drvAsynIPPortConfigure("demoN1471","192.168.37.50:8100",0,0,0)


dbLoadTemplate "substitutions/demoNIM8304.substitutions"
dbLoadTemplate "substitutions/demoN1471.substitutions"


cd ${TOP}/iocBoot/${IOC}
iocInit


