N1471��ѹ��� IOC Ӧ�ó���˵����

Ӳ�����ӣ�N1471��ѹ�������NIM8304/8301ϵ�л��䣬������Fan Unitͨ��RS232���ӡ�����ͨ���������������

1. ���������ļ���iocBoot/iocmain/st.cmd
������������������NIM��������ӣ�
drvAsynIPPortConfigure("demoN1471","192.168.37.50:8100",0,0,0)
���е�һ������ ��demoN1471"ΪAsyn������Port��ַ�����ڱ�ʶ�û������ӡ������������ַ�������substitutions�ļ�����Ҫ�ø�port����ʶ�û��䡣
IP��ַΪNIM8304/8301�����IP��ַ��
�������ӻ��䣬ֻ��Ҫ���Ƹ��У����޸���Ӧ�������ɡ����磺
drvAsynIPPortConfigure("demoN1471_2","192.168.37.51:8100",0,0,0)

2. EPICS Database �����ļ�: substitutions/demoN1471.substitutions
ͨ������board��channel����չ�Ϳ���ʵ�����Ӹ�ѹ���




