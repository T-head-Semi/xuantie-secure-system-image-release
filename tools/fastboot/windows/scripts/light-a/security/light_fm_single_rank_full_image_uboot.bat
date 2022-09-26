:: Script to flash imagess via fastboot

@echo off
ping 127.0.0.1 -n 5 >nul
call:RunACmd "..\..\..\fastboot.exe flash uboot ..\..\..\..\..\..\images\light-fm-a\light_fastboot_image_single_rank_sec\u-boot-with-spl.bin"
call:RunACmd "..\..\..\fastboot.exe flash tf ..\..\..\..\..\..\images\light-fm-a\tf.ext4"
call:RunACmd "..\..\..\fastboot.exe flash tee ..\..\..\..\..\..\images\light-fm-a\tee.ext4"
call:RunACmd "..\..\..\fastboot.exe flash boot ..\..\..\..\..\..\images\light-fm-a\boot.ext4"
call:RunACmd "..\..\..\fastboot.exe flash root ..\..\..\..\..\..\images\light-fm-a\rootfs.linux.ext4"

pause
exit

:RunACmd
SETLOCAL
set CmdStr=%1
echo IIIIIIIIIIIIIIII Run Cmd:  %CmdStr% 
%CmdStr:~1,-1% || goto RunACmd

GOTO:EOF
