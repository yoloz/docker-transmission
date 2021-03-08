#!/bin/sh

#
#-a   --allowed      Allowed IP addresses. 
#-t   --auth         Require authentication
#-p   --port         RPC port (Default: 9091)
#-u   --username     Set username for authentication
#-v   --password     Set password for authentication
#-w   --download-dir  Where to save downloaded data
#-P   --peerport     Port for incoming peers (Default:51413)
#

#docker后台运行必须有一个前台进程,docker运行的命令如果不是那些一直挂起的命令（top...）是会自动退出的
#这里添加tail这种可以前台运行的程序持续输出log文件

echo '' > /var/log/transmission/transmission.log

transmission-daemon -a "*" -t -u ${USERNAME} -v ${PASSWORD} -e /var/log/transmission/transmission.log

tail -f /var/log/transmission/transmission.log

   