@set version=0.1.5
@setlocal DisableDelayedExpansion
@echo off
:MainMenu
cls
title  Alist�ű�����_sky���� v%version%
echo:
echo:
echo:
echo:
echo:
echo:
echo:            ___________________________________________________ 
echo:                                                               
echo:               [01] ��ʼAlist����
echo:               [02] ����Alist����
echo:               [03] ����Alist����
echo:               [04] ��Alist��ҳ
echo:               [05] ��Alist����
echo:               [06] ����Alist����
echo:               [07] �鿴Alist��Ŀ 
echo:               [08] ����Alist����
echo:               [09] ��ѯAlist�汾
echo:               [10] ��ѯ����Ŀ�汾
echo:               [00] �˳�
echo:            ___________________________________________________
echo:         
echo:         ����^ By sky
echo:         
echo:�ü����������,�밴�»س�����
echo:��������ϵĲ˵�ѡ�� [1,2,3,4,5,6,7,8,9,10,0]
echo: 
set choice=0
set /p choice=ѡ��
if "%choice%"=="0" goto :exit
if "%choice%"=="00" goto :exit
if "%choice%"=="1" goto :start
if "%choice%"=="01" goto :start
if "%choice%"=="2" goto :restart
if "%choice%"=="02" goto :restart
if "%choice%"=="3" goto :stop
if "%choice%"=="03" goto :stop
if "%choice%"=="4" goto :web
if "%choice%"=="04" goto :web
if "%choice%"=="5" goto :admin
if "%choice%"=="05" goto :admin
if "%choice%"=="6" goto :passworld
if "%choice%"=="06" goto :passworld
if "%choice%"=="7" goto :github-alist
if "%choice%"=="07" goto :github-alist
if "%choice%"=="8" goto :alist
if "%choice%"=="08" goto :alist
if "%choice%"=="9" goto :version-alist
if "%choice%"=="09" goto :version-alist
if "%choice%"=="10" goto :version
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:passworld
cls
echo:   
echo: 
echo:
echo: 
echo:       
echo:                      ��ӭ����Alist��������
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] �������Alist���루�Դ���
echo:               [2] �������Alist���루���ɣ�
echo:               [3] �Զ�������Alist����
echo:               [4] ��Alist��������Ϊadmin
echo:               [0] �������˵�
echo:            ___________________________________________________
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,3,0]
echo: 
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :random
if "%choice%"=="2" goto :random-make
if "%choice%"=="3" goto :newpassworld
if "%choice%"=="4" goto :passworld-admin
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :passworld

:random
alist.exe admin random
ping 127.0.0.1 -n 6 > nul
goto :MainMenu

:random-make
@echo off 
title ������������� By sky
setlocal enabledelayedexpansion
cls
goto :start-make

:start-make
	echo ��ѡ�����뱾��&echo. 1��ϵͳĬ�����뱾(Ӣ�Ĵ�Сд������) &echo. 2���û��Զ�������뱾
	set/p "n=>"
	if %n%==1  goto :random-system
	if %n%==2  goto :random-user
	if %n% gtr 2 goto :random-retry

:random-system
	echo ��������������λ����
	set/p "num=>"
	echo ========%num% λ���������������========
	set str=abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789
		 for /l %%i in (1,1,%num%) do (
   		 set /a num=!random!%%62
   		 call set systemy=%%str:~!num!,1%%
   		 set system-random=!system-random!!systemy!
)
echo,&echo ���ɵ��������Ϊ�� !system-random!
set user-random=
set input=
set a=
set num=
set n=
pause
goto :systemrandom

:random-user
	set "input="
	set /p input=-^> ���������뱾:
	set a=0
:her
	set u=!input:~%a%,1!
	if not "!u!"=="" (set/a a+=1
	goto her
) else (echo �ַ������ȣ�%a%)
:custom
	echo ��������������λ����
	set/p "num=>"
	echo ========%num% λ���������������========
	set str=!input!
		for /l %%i in (1,1,%num%) do (
  		set /a num=!random!%%a!
   		call set usery=%%str:~!num!,1%%
    	set user-random=!user-random!!usery!
)
echo,&echo ���ɵ��������Ϊ�� !user-random!
set system-random=
set input=
set a=
set num=
set n=
pause
goto :userrandom

:random-retry
	echo ѡ�����������ѡ��
ping 127.0.0.1 -n 2 > nul
cls
	goto :start-make

:userrandom
alist.exe admin set "%user-random%"
set user-random=
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:systemrandom
alist.exe admin set "%system-random%"
set system-random=
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:passworld-admin
alist.exe admin set admin
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:newpassworld
echo:����������Ҫ���õ�����
set choice=0
set /p new passworld=
alist.exe admin set "%new passworld%"
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:exit
cls
echo:
echo:
echo:
echo:                  �Ƿ��˳�������
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] �˳�������
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" taskkill -f -t -im alist.exe
if "%choice%"=="1" rmdir /s /q data
if "%choice%"=="1" rmdir /s /q daemon
if "%choice%"=="1" exit /b
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :exit

:start
cls
echo:
echo:
echo:
echo:                  �Ƿ���������
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��������
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" alist.exe start
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :start

:stop
cls
echo:
echo:
echo:
echo:                  �Ƿ��������
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��������
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" alist.exe stop
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :stop

:restart
cls
echo:
echo:
echo:
echo:                  �Ƿ���������
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��������
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" alist.exe restart
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :restart

:web
cls
echo:
echo:
echo:
echo:                  �Ƿ��Alist��ҳ
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��Alist��ҳ
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" start http://localhost:5244
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :web

:admin
cls
echo:
echo:
echo:
echo:                  �Ƿ����Alist�������
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ����Alist�������
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" start http://localhost:5244/@manage
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :admin

:github-alist
cls
echo:
echo:
echo:
echo:             �Ƿ�鿴Github�ϵ�Alist��Ŀ
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] �鿴
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" start https://github.com/alist-org/alist
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :github-alist

:alist
cls
echo:
echo:
echo:
echo:                  �Ƿ����Alist����
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] �������Ĺ���
echo:               [2] ����Ӣ�Ĺ���
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" start https://alist.nn.ci/zh/
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="2" start https://alist.nn.ci/
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="2" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :alist

:version
cls
echo:
echo:
echo:
echo:
echo:               ������ѯ������Ŀ�汾Ϊv%version%
echo:               �Ƿ��ȡ����Ŀ�����°汾��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��ȡ
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :update
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :version

:update-github
start https://github.com/skywyjk/Alist.bat
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update-gitee
start https://gitee.com/skywyjk/alist.bat
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update-github-tyro
start https://github.com/skywyjk/Alist.bat/releases
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update-gitee-tyro
start https://gitee.com/skywyjk/alist.bat/releases
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:update
cls
echo:
echo:
echo:
echo:                  ��ȡ����Ŀ�����°汾
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ����GitHub����
echo:               [2] ����Gitee����
echo:               [0] ������һ��
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :questionnaire-github
if "%choice%"=="2" goto :questionnaire-gitee
if "%choice%"=="0"  goto :version
ping 127.0.0.1 -n 2 > nul
goto :update

:questionnaire-github
cls
echo:
echo:
echo:
echo:                 �Ƿ��GitHub�ǳ���Ϥ
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��GitHub�ǳ���Ϥ
echo:               [2] ��GitHub��̫��Ϥ
echo:               [0] ������һ��
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :update-github
if "%choice%"=="2" goto :update-github-tyro
if "%choice%"=="0"  goto :update
ping 127.0.0.1 -n 2 > nul
goto :questionnaire-github

:questionnaire-gitee
cls
echo:
echo:
echo:
echo:                 �Ƿ��Gitee�ǳ���Ϥ
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��Gitee�ǳ���Ϥ
echo:               [2] ��Gitee��̫��Ϥ
echo:               [0] ������һ��
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :update-gitee
if "%choice%"=="2" goto :update-gitee-tyro
if "%choice%"=="0"  goto :update
ping 127.0.0.1 -n 2 > nul
goto :questionnaire-gitee

:version-alist
cls
echo:
echo:
echo:
echo:                  �Ƿ��ѯAlist�汾
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [1] ��ѯ
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" alist.exe version
ping 127.0.0.1 -n 2 > nul
if "%choice%"=="1" goto :MainMenu
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :version-alist

