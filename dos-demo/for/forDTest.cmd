@rem һ��������ʽ
@rem FOR %%variable IN (set) DO command [command-parameters]
@rem   %%variable  ָ��һ����һ��ĸ��ʾ���滻�Ĳ�����
@rem   (set)      ָ��һ����һ���ļ�������ʹ��ͨ�����
@rem   command    ָ����ÿ���ļ�ִ�е����
@rem   command-parameters
@rem              Ϊ�ض�����ָ�������������п��ء�
@rem 
@rem 
@rem 
@rem ����:FOR��4������ /d   /l   /r   /f   ���ǵ������������������ӽ���
@rem ���ڿ�ʼ��ÿ����������˼
@rem 
@rem �������� /d
@rem FOR /D %%variable IN (set) DO command [command-parameters]
@rem     ������а���ͨ�������ָ����Ŀ¼��ƥ�䣬�������ļ�
@rem     ��ƥ�䡣
@rem ��� Set (Ҳ����������д�� "����ļ�������") ����ͨ�����* �� ?���������� Set ��ƥ���ÿ��Ŀ¼��������ָ��Ŀ¼�е��ļ��飩ִ��ָ���� Command��
@rem ���������Ҫ����Ŀ¼����,���������ļ�,������������
@rem @echo off
@rem for /d %%i in (c:\*) do echo %%i
@rem pause
@rem ���л��C�̸�Ŀ¼�µ�ȫ��Ŀ¼���ִ�ӡ����,���ļ�����һ��Ҳ����ʾ!
@rem ����һ��,��������Ҫ�ѵ�ǰ·�����ļ��е�����ֻ��1-3����ĸ�Ĵ����
@rem @echo off
@rem for /d %%i in (???) do echo %%i
@rem pause
@rem �����Ļ�����㵱ǰĿ¼����Ŀ¼����ֻ��1-3����ĸ��,�ͻ���ʾ����,û�оͲ���ʾ��
@rem ���������*�ź�?�ŵ�����,*�ű�ʾ����N���ַ�,��?��ֻ��ʾ����һ���ַ�
@rem ֪��������,����Ҹ�˼����Ŀ!
@rem @echo off
@rem for /d %%i in (window?) do echo %%i
@rem pause
@rem ���浽C����ִ��,����ʾʲô��?�Լ�����! ��ʾ��windows
@rem /D����ֻ����ʾ��ǰĿ¼�µ�Ŀ¼����,������Ҫע��!

@rem ��һ���ļ��е�ÿһ���ļ�ִ��ĳ���ض����
@rem 
@rem FOR %variable IN (set) DO command [command-parameters]
@rem 
@rem   %variable  ָ��һ����һ��ĸ���滻�Ĳ�����
@rem   (set)      ָ��һ����һ���ļ�������ʹ��ͨ�����
@rem   command    ָ����ÿ���ļ�ִ�е����
@rem   command-parameters
@rem              Ϊ�ض�����ָ�������������п��ء�
@rem 
@rem �������������ʹ�� FOR ����ʱ��ָ��������ʹ�� %%variable
@rem ����Ҫ�� %variable���������������ִ�Сд�ģ����� %i ��ͬ�� %I.

@rem ʹ��forѭ����/d��ʾĿ¼�µ��ļ��У������ļ�
@rem ʹ�ñ��� %%i ������˫��̾��+����ĸ,һ��ע���ǵ�����ĸ��˫��ĸ������
@echo off
for /d %%m in (D:\KMPlayer\*) do (
	echo %%m
)

echo.
@rem ע��ͨ������÷����ǺŴ���������ַ�������?����һ����ĸ
@rem ��ӡ�� D:\KMPlayer\ ��ֻ��4���ַ��������ļ��д�ӡ����
for /d %%n in (D:\KMPlayer\????) do (
	echo %%n
)

pause
