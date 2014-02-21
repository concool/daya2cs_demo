TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = main
# main.dbd will be created and installed
DBD += main.dbd

# main.dbd will be made up from these files:
main_DBD += base.dbd
main_DBD += stream.dbd
main_DBD += drvAsynIPPort.dbd

# Include dbd files from all support applications:
#main_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#main_LIBS += xxx

# main_registerRecordDeviceDriver.cpp derives from main.dbd
main_SRCS += main_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
main_SRCS_DEFAULT += mainMain.cpp
main_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#main_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
main_LIBS += $(EPICS_BASE_IOC_LIBS)
main_LIBS += stream asyn

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

