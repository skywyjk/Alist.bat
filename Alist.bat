@set iasver=0.0.1
@setlocal DisableDelayedExpansion
@echo off
:MainMenu
cls
title  Alist�ű�����_sky���� 
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
echo:               [0] �˳�
echo:            ___________________________________________________
echo:         
echo:         ����^ By sky
echo:         
echo: ��������ϵĲ˵�ѡ�� [1,2,3,4,5,6,0]"
choice /C:1234560 /N
set _erl=%errorlevel%

if %_erl%==7 exit /b
if %_erl%==6 alist admin set admin
if %_erl%==5 start http://localhost:5244/@manage
if %_erl%==4 start http://localhost:5244
if %_erl%==3 alist.exe stop
if %_erl%==2 alist.exe restart
if %_erl%==1 alist.exe start
goto :MainMenu

:: �ڴ����¿���
