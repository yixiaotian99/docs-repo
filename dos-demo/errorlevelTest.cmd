@rem 4��errorlevel
@rem ���򷵻���
@rem echo %errorlevel%
@rem ÿ���������н�������������������и�ʽ�鿴������
@rem �����жϸղŵ������Ƿ�ִ�гɹ�
@rem Ĭ��ֵΪ0��һ������ִ�г������ errorlevel Ϊ1

@echo off
@rem choice /m "��ѭ���ˣ�"
choice /c:abc /m "Choose an option"
echo %errorlevel%


pause