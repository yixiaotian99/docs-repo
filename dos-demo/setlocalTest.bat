@rem 16��setlocal �� �����ӳ�
@rem ������������[Ӣ�۳�Ʒ]��������̳̣�
@rem Ҫ����ף������ӳ��Ǳع���һ�أ�������һ����ϣ���������濴��
@rem Ϊ�˸��õ�˵�����⣬����������һ�����ӡ�
@rem ��1:
@rem @echo off
@rem set a=4
@rem set a=5 & echo %a%
@rem pause
@rem �����4
@rem ��˵��Ϊʲô��4������5�أ���echo֮ǰ�����Ѿ��ѱ���a��ֵ�ĳ�5�ˣ�
@rem ���������˽�һ����������������Ļ��ƣ�
@rem �� �����ȡ����ʱ�ǰ��ж�ȡ�ģ���������for����ȣ������һ��Բ���űպϵ��������Ҳ����һ�У����ڴ���֮ǰҪ��ɱ�Ҫ��Ԥ�������������оͰ����Ը� �������еı�����ֵ���������ڷ���һ����1�������������е���䡰set a=5 & echo %a%��֮ǰ���Ȱ���һ�������ȡ������Ԥ�������Ա���a����ֵ����ô%a%��Ȼ����4�ˣ���û��Ϊʲô������������������ġ���
@    rem er��Ϊ���ܹ���֪���������Ķ�̬�仯������������˱����ӳ١�����˵���ڶ�ȡ��һ�����������֮�󣬲������Ը��еı�����ֵ��������ĳ���������ִ��֮ǰ�ٽ��и�ֵ��Ҳ����˵���ӳ١��˶Ա����ĸ�ֵ��

@rem ��ô��ο��������ӳ��أ������ӳ�����Ҫע��ʲô�أ��ٸ�����˵��һ�£�
@rem ��2:
@rem @echo off
@rem setlocal enabledelayedexpansion
@rem set a=4
@rem set a=5 & echo !a!
@rem pause 
@rem �����5
@rem ��˵�������˱����ӳ٣��õ�����ȷ�𰸡������ӳٵ���������ǡ�setlocal enabledelayedexpansion�������ұ���Ҫ��һ��̾�š�!!����������ע��Ҫ��Ӣ�ĵ�̾�ţ��������û�б����ӳٵ�Ч����
@rem ����һ����2�����ȡ�setlocal enabledelayedexpansion�����������ӳ٣�Ȼ��set a=4���ȸ�����a��ֵΪ
@rem 4����set a=5 & echo !a!������Ǹ�����a��ֵΪ5����������������˱����ӳ٣������������ܹ���֪����̬�仯���������ȸ����б�����ֵ�����������й����и�������ֵ����˴�ʱa��ֵ����5�ˣ���
@rem �پ�һ�����ӹ���һ�¡�
@rem ��3:
@rem @echo off
@rem setlocal enabledelayedexpansion
@rem for /l %%i in (1,1,5) do (
@rem set a=%%i
@rem echo !a!
@rem )
@rem pause
@rem �����
@rem 1
@rem 2
@rem 3
@rem 4
@rem 5
@rem ��˵�����������˱����ӳٲ��á�!!������������������˵õ�����Ԥ�ڵĽ����������ñ����ӳٻ����ʲ
@rem ô����أ�����������ģ�
@rem ECHO ���ڹر�״̬��
@rem ECHO ���ڹر�״̬��
@rem ECHO ���ڹر�״̬��
@rem ECHO ���ڹر�״̬��
@rem ECHO ���ڹر�״̬��
@rem ��û�и�֪��for����еĶ�̬�仯��
@rem    mre��ʾ����û�п��������ӳٵ�����£�ĳ���������еı����ı䣬���뵽��һ������������֡���һ��Ҳ���Լ������ã������ӡ�
@rem ������������������ֵ���Ҳ����м����
@rem @echo off
@rem ::Ŀ�ģ���������������ֵ�����ǲ�ʹ����ʱ����
@rem ::Code by JM 2007-1-24 [email=CMD@XP]CMD@XP[/email]
@rem ::������http://www.cn-dos.net/forum/viewthread.php?tid=27078
@rem set var1=abc
@rem set var2=123
@rem echo ����ǰ�� var1=%var1% var2=%var2%
@rem set var1=%var2%& set var2=%var1%
@rem echo ������ var1=%var1% var2=%var2%
@rem pause


@rem Ĭ������£�dos�Ա�������Ԥ����
@echo off 
set a=4
set a=5 
echo a=%a%
echo.

set b=4
set b=5 & echo b=%b%
echo b=%b%

@rem  ���ؽ�����£���ͬһ�б����ĸ�ֵdos����������Ӧ����dos����Ԥ��������һ������ʱ�ŵõ���ȷֵ
@rem 5
@rem 4
@rem 5
@rem �밴���������. . .

@rem ���������ӳ٣�����ʹ��Ӣ�ĵĸ�̾��
setlocal enabledelayedexpansion
set c=4
set c=5 & echo c=!c!

@rem ʹ��for�����ӡ��1��5������,ע��������������� %%k ������%k
@rem FOR /L %variable IN (start,step,end) DO command [command-parameters]
@rem     �ü���ʾ��������ʽ�ӿ�ʼ��������һ���������С���ˣ�(1,1,5)����������
@rem     1 2 3 4 5��(5,-1,1)����������(5 4 3 2 1)
setlocal enabledelayedexpansion
for /l %%k in (1,1,5) do (
	set mm=%%k  
	echo mm=!mm!
)


pause












