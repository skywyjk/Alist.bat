@set iasver=0.0.7
@setlocal DisableDelayedExpansion
@echo off
:MainMenu
cls
title  Alist�ű�����_sky���� v%iasver%
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
echo:               [0] �˳�
echo:            ___________________________________________________
echo:         
echo:         ����^ By sky
echo:         
echo:�ü����������,�밴�»س�����
echo:��������ϵĲ˵�ѡ�� [1,2,3,4,5,6,7,8,0]
echo: 
set choice=0
set /p choice=ѡ��
if "%choice%"=="0" taskkill -f -t -im alist.exe
if "%choice%"=="0" rmdir /s /q data
if "%choice%"=="0" rmdir /s /q daemon
if "%choice%"=="0" exit /b
if "%choice%"=="1" alist.exe start
if "%choice%"=="2" alist.exe restart
if "%choice%"=="3" alist.exe stop
if "%choice%"=="4" start http://localhost:5244
if "%choice%"=="5" start http://localhost:5244/@manage
if "%choice%"=="6" goto :passworld
if "%choice%"=="7" start https://github.com/alist-org/alist
if "%choice%"=="8" start https://alist.nn.ci/zh/
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
if "%choice%"=="1" alist admin random
if "%choice%"=="2" goto :newpassworld
if "%choice%"=="3" alist admin set admin
if "%choice%"=="0" goto :MainMenu
ping 127.0.0.1 -n 2 > nul
goto :MainMenu

:newpassworld
echo:����������Ҫ���õ�����
set choice=0
set /p new passworld=
alist admin set "%new passworld%"
ping 127.0.0.1 -n 2 > nul
goto :MainMenu



