N8304����IOC Ӧ�ó���˵����

Ӳ�����ӣ�����ͨ���������������

1. ���������ļ���iocBoot/iocmain/st.cmd
������������������NIM��������ӣ�
drvAsynIPPortConfigure("demoNIM8304","192.168.37.50:8100",0,0,0)
���е�һ������ ��demoNIM8304"ΪAsyn������Port��ַ�����ڱ�ʶ�û������ӡ������������ַ�������substitutions�ļ�����Ҫ�ø�port����ʶ�û��䡣
IP��ַΪNIM8304/8301�����IP��ַ��
�������ӻ��䣬ֻ��Ҫ���Ƹ��У����޸���Ӧ�������ɡ����磺
drvAsynIPPortConfigure("demoNIM8304_2","192.168.37.51:8100",0,0,0)

2. EPICS Database �����ļ�: substitutions/demoNIM8304.substitutions
ͨ�����ƺ��޸������������ӻ��䡣

3.��iocBoot/iocmain/Ŀ¼��ִ�� ��./st.cmd�� ��������IOC








