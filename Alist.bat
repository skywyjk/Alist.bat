@set version=0.0.9
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
echo:               [1] ��ʼAlist����
echo:               [2] ����Alist����
echo:               [3] ����Alist����
echo:               [4] ��Alist��ҳ
echo:               [5] ��Alist����
echo:               [6] ����Alist����
echo:               [7] �鿴Alist��Ŀ 
echo:               [8] ����Alist����
echo:               [9] ��ѯ����Ŀ�汾
echo:               [0] �˳�
echo:            ___________________________________________________
echo:         
echo:         ����^ By sky
echo:         
echo:�ü����������,�밴�»س�����
echo:��������ϵĲ˵�ѡ�� [1,2,3,4,5,6,7,8,9,0]
echo: 
set choice=0
set /p choice=ѡ��
if "%choice%"=="0" goto :exit
if "%choice%"=="1" goto :start
if "%choice%"=="2" goto :restart
if "%choice%"=="3" goto :stop
if "%choice%"=="4" goto :web
if "%choice%"=="5" goto :admin
if "%choice%"=="6" goto :passworld
if "%choice%"=="7" goto :github-alist
if "%choice%"=="8" goto :alist
if "%choice%"=="9" goto :version
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
echo:               [1] �������Alist����
echo:               [2] �Զ�������Alist����
echo:               [3] ��Alist��������Ϊadmin
echo:               [0] �������˵�
echo:            ___________________________________________________
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,3,0]
echo: 
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :random
if "%choice%"=="2" goto :newpassworld
if "%choice%"=="3" goto :passworld-admin
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 3 > nul
goto :passworld

:random
alist.exe admin random
ping 127.0.0.1 -n 6 > nul
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
echo:                  �Ƿ��˳�������Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] �˳�������
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" taskkill -f -t -im alist.exe
if "%choice%"=="Y" rmdir /s /q data
if "%choice%"=="Y" rmdir /s /q daemon
if "%choice%"=="Y" exit /b
if "%choice%"=="N" goto :MainMenu
if "%choice%"=="y" taskkill -f -t -im alist.exe
if "%choice%"=="y" rmdir /s /q data
if "%choice%"=="y" rmdir /s /q daemon
if "%choice%"=="y" exit /b
if "%choice%"=="n" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :exit

:start
cls
echo:
echo:
echo:
echo:                  �Ƿ���������Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] ��������
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" alist.exe start
if "%choice%"=="N" goto :MainMenu
if "%choice%"=="y" alist.exe start
if "%choice%"=="n" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :start

:stop
cls
echo:
echo:
echo:
echo:                  �Ƿ��������Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] ��������
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" alist.exe stop
if "%choice%"=="N" goto :MainMenu
if "%choice%"=="y" alist.exe stop
if "%choice%"=="n" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :stop

:restart
cls
echo:
echo:
echo:
echo:                  �Ƿ���������Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] ��������
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" alist.exe restart
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" alist.exe restart
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :restart

:web
cls
echo:
echo:
echo:
echo:                  �Ƿ��Alist��ҳ��Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] ��Alist��ҳ
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" start http://localhost:5244
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" start http://localhost:5244
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :web

:admin
cls
echo:
echo:
echo:
echo:                  �Ƿ����Alist������棨Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] ����Alist�������
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" start http://localhost:5244/@manage
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" start http://localhost:5244/@manage
if "%choice%"=="n"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :admin

:github-alist
cls
echo:
echo:
echo:
echo:             �Ƿ�鿴Github�ϵ�Alist��Ŀ��Y/N��
echo:            ___________________________________________________ 
echo:                                                                            
echo:               [Y] �鿴
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" start https://github.com/alist-org/alist
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" start https://github.com/alist-org/alist
if "%choice%"=="n"  goto :MainMenu
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
if "%choice%"=="2" start https://alist.nn.ci/
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
echo:               [Y] ��ȡ
echo:               [N] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" goto :update
if "%choice%"=="N"  goto :MainMenu
if "%choice%"=="y" goto :update
if "%choice%"=="n"  goto :MainMenu
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
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [1,2,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="1" goto :questionnaire-github
if "%choice%"=="2" goto :questionnaire-gitee
if "%choice%"=="0"  goto :MainMenu
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
echo:               [Y] ��GitHub�ǳ���Ϥ
echo:               [N] ��GitHub��̫��Ϥ
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" goto :update-github
if "%choice%"=="N" goto :update-github-tyro
if "%choice%"=="y" goto :update-github
if "%choice%"=="n" goto :update-github-tyro
if "%choice%"=="0"  goto :MainMenu
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
echo:               [Y] ��Gitee�ǳ���Ϥ
echo:               [N] ��Gitee��̫��Ϥ
echo:               [0] �������˵�
echo:            ___________________________________________________ 
echo:         
echo:��������ϵĲ˵�ѡ�� [Y,N,0]
set choice=0
set /p choice=ѡ��
if "%choice%"=="Y" goto :update-gitee
if "%choice%"=="N" goto :update-gitee-tyro
if "%choice%"=="y" goto :update-github
if "%choice%"=="n" goto :update-github-tyro
if "%choice%"=="0"  goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :questionnaire-gitee
