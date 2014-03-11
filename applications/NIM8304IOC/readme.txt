N8304机箱IOC 应用程序说明书

硬件连接：机箱通过网口与电脑连接

1. 启动配置文件：iocBoot/iocmain/st.cmd
下面这行用于配置与NIM机箱的连接：
drvAsynIPPortConfigure("demoNIM8304","192.168.37.50:8100",0,0,0)
其中第一个参数 “demoNIM8304"为Asyn驱动的Port地址，用于标识该机箱连接。可以是任意字符串。在substitutions文件中需要用该port来标识该机箱。
IP地址为NIM8304/8301机箱的IP地址。
若需增加机箱，只需要复制该行，并修改相应参数即可。例如：
drvAsynIPPortConfigure("demoNIM8304_2","192.168.37.51:8100",0,0,0)

2. EPICS Database 配置文件: substitutions/demoNIM8304.substitutions
通过复制和修改现有行来增加机箱。

3.在iocBoot/iocmain/目录下执行 “./st.cmd” 命令启动IOC








