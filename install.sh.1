#!/bin/bash

echo "Installation start:"
path(){
    echo "Please input the file folder path:"
    echo "请输入文件目录绝对路径："
    read x
    while [ ! -d $x ]
    do
        echo "Path not exist!"
        echo "路径不存在！"
        path
    done
}
cronTime(){
    echo "Please input the cron time\(hour\):"
    echo "请输入检测时间间隔（小时）:"
    read y
    while [ true ]
    do
        if [[ `echo "$y"|grep "^[0-9]*$"|wc -l` = 0 ]] || [[ $x = "" ]];then
            echo "输入格式错误,请重新输入数字："
            cronTime
        else
            break
        fi
    done
}
dayBefore(){
    echo "Please input the day\'s number to be cleared\(day\):"
    echo "请输入要清理几天前的数据（天）:"
    read z
    while [ true ]
    do
        if [[ `echo "$z"|grep "^[0-9]*$"|wc -l` = 0 ]] || [[ $x = "" ]];then
            echo "输入格式错误\,请重新输入数字："
            dayBefore
        else
            break
        fi
    done
}
path
cronTime
dayBefore

cat << EOF > /usr/bin/clear-pcdn
for i in \`find $x -mtime +$z -type f\`
do
    rm -rf \$i
done
EOF

chmod +x /usr/bin/clear-pcdn

echo "* */$y * * *  root /usr/bin/clear-pcdn" > /etc/crontab
systemctl restart cron
/usr/bin/clear-pcdn

echo "done"
echo "安装完成。"
