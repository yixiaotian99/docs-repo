@rem 15��IF
@rem IF �����ж���䣬�﷨��ʽ���£�
@rem IF [NOT] ERRORLEVEL number command
@rem IF [NOT] string1==string2 command
@rem IF [NOT] EXIST filename command
@rem ������һ���ܣ�����ϸ�ķ����뿴�����½ڡ�
@rem 
@rem (1) IF [NOT] ERRORLEVEL number command
@rem IF ERRORLEVEL������ӱ������ĳһ������ĺ��棬ִ���������IF ERRORLEVEL ���ж�����ķ���ֵ��
@rem Number������ȡֵ��Χ0~255���ж�ʱֵ������˳��Ӧ���ɴ�С�����ص�ֵ���ڵ���ָ����ֵʱ����������
@rem ����
@rem @echo off
@rem dir c:
@rem rem�˳�����Ϊ>=1����������1��ִ�У�>=0����������0��ִ��
@rem IF ERRORLEVEL 1 goto 1
@rem IF ERRORLEVEL 0 goto 0
@rem Rem ��������в��ɽ���λ�ã�����ʧ����Ҳ��ʾ�ɹ���
@rem :0
@rem echo ����ִ�гɹ���
@rem Rem ����ִ�������������exit���˳�
@rem goto exit
@rem :1
@rem echo ����ִ��ʧ�ܣ�
@rem Rem ����ִ�������������exit���˳�
@rem goto exit
@rem :exit
@rem pause
@rem ������ʾ������ִ�гɹ���
@rem (2) IF [NOT] string1==string2 command
@rem string1��string2��Ϊ�ַ������ݣ�Ӣ�����ַ��Ĵ�Сд��������ͬ����������еĵ��ںű�����������������ȵ���˼��
@rem ������Ⱥ�ִ�к����command
@rem ��⵱ǰ������ֵ�����жϣ�Ϊ�˷�ֹ�ַ����к��пո񣬿������¸�ʽ
@rem if [NOT] {string1}=={string2} command
@rem if [NOT] [string1]==[string2] command
@rem if [NOT] "string1"=="string2" command
@rem ����д��ʵ���Ͻ����Ż����ŵ����ַ�����һ�����ˣ�ֻҪ�Ⱥ���������һ�¾����ˣ����������д���Ͳ��У�
@rem if {string1}==[string2] command
@rem 
@rem (3) IF [NOT] EXIST filename command
@rem EXIST filenameΪ�ļ���Ŀ¼���ڵ���˼
@rem echo off
@rem IF EXIST autoexec.bat echo �ļ����ڣ�
@rem IF not EXIST autoexec.bat echo �ļ������ڣ�
@rem ����������ҿ��Է���C�̺�D�̷ֱ�ִ�У�����Ч��


@rem ��һ������errorlevel
@rem ʹ��errorlevel��������ĳ������ĺ��棬��errorlevel���밴�ɴ�С˳��
@rem dir 
@rem echo %errorlevel%
@rem echo.
@rem dir /dd
@rem echo %errorlevel%

@rem ���ؽ�����£�
@rem F:\downloads>echo 0
@rem 0
@rem F:\downloads>echo.
@rem F:\downloads>dir /dd
@rem ������ʽ����ȷ - "dd"��
@rem F:\downloads>echo 1
@rem 1

@rem �ڶ����Ƚ������ַ�����ȣ�ͨ�����Ǽ�˫���ż��ɣ�
@rem set aa="����"
@rem set bb="����"
@rem if %aa%==%bb% echo "���"
@rem if not %aa%==%bb% echo "�����"

@rem ����Ҫôȫ��˫���ţ�Ҫôȫû�У���Ϊ�ַ����Ƚ��ǰѷ���Ҳ���бȽ�
@rem if %aa%=="%bb%" echo "���"
@rem if not %aa%=="%bb%" echo "Ҳ�����"

@rem �������ж��ļ��Ƿ����,����MD��else����Ҫ��if����)��ͬһ���ϣ��������ʾ����
if not exist ifTest.cmd (echo "������"
) else ( echo "����")


pause



