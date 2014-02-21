#beamline specific environment settings
source /home/controls/epics/R3.14.12.2/setup.profile

# Channel access networking
#
# Need broadcast address on 'local' subnet to access all CA servers
#
# Must serve on specific interface in case there are multiple
export EPICS_CA_ADDR_LIST="192.168.37.255 192.168.37.197"
export EPICS_CAS_INTF_ADDR_LIST="192.168.37.197"
export EPICS_CAS_BEACON_ADDR_LIST="192.168.37.197"
