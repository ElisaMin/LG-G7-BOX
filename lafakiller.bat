@echo off
title Lafɱ��
mode con cols=80 lines=30
color f0
set rf=%~dp0
set number=%random%%random%_%time%
cls
echo PowerBy-HEIZI %number%
echo -------------------------------------------------------------------------------
:check-exist-adb.exe
echo ���adb.exe�Ƿ�����С���
echo -------------------------------------------------------------------------------
if not exist "%rf%adb\adb.exe" (
echo ����:
echo δ�ҵ�adb.exe����������������
goto r-a
) 
echo �ɹ��ҵ�adb.exe
set adb="%rf%adb\adb.exe"
echo -------------------------------------------------------------------------------
goto home
:r-a
echo -------------------------------------------------------------------------------
echo ���Լ�׼����adb.exe���뱾�����ڣ�û����رա�
set /p adb= 
:home
%adb% kill-server
cls
echo PowerBy-HEIZI %number%
echo -------------------------------------------------------------------------------
echo ע��: ��ȷ������LG�豸��װ��Magisk����USB���Ժ����ӵ��ԡ�
echo -------------------------------------------------------------------------------
echo Ŀǰ�Ѿ�ʶ�𵽵��豸��:
%adb% devices
echo -------------------------------------------------------------------------------
echo 1.Ĭ��ģʽ^(����^+ɾ��laf_a^)
echo 2.�߼�ģʽ^(������ѡ������֮������A����ɱB^)
echo -------------------------------------------------------------------------------
choice /m "��ѡ��ģʽ(������Զ���תĬ��)" /c 12 /d 1 /t 0003
if %errorlevel%==1 goto easymode
if %errorlevel%==2 goto hardmode
:easymode
cls
echo PowerBy-HEIZI %number%
echo -------------------------------------------------------------------------------
echo ע��: ��ȷ������LG�豸��װ��Magisk����USB���Ժ����ӵ��ԡ�
echo -------------------------------------------------------------------------------
goto end
:hardmode
cls
echo PowerBy-HEIZI %number%
echo -------------------------------------------------------------------------------
echo ע��: ��ȷ������LG�豸��װ��Magisk����USB���Ժ����ӵ��ԡ�
echo -------------------------------------------------------------------------------
goto end




:end
set /p powerbyheizi=ִ�����,�������������ҳ��
goto home