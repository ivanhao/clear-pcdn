#!/bin/bash

echo "Uninstall start:"
echo "是否确认卸载(y/N): "

read x
if [ $x = 'y' ];then
    rm -rf /usr/bin/clear-pcdn
    if [ `cat /etc/crontab|grep clear-pcdn|wc -l` = 1 ];then
        sed -i '/clear-pcdn/d' /etc/crontab
    fi
fi

systemctl restart cron

echo "done"
echo "卸载完成。"
