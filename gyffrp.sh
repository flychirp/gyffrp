#!/bin/bash
# author:顾一飞
# url:www.guyifei.cn
echo "欢迎使用顾一飞FRP自动脚本"
echo "是否需要修改服务端信息"
echo "yes/no"
ask2=yes
ask3=no
read ask1
if [ $ask1 == $ask2 ]
then
	echo "输入服务端ip地址"
	read wsip
	sed -i "2c server_addr = ${wsip}" frpc.ini
	echo "输入服务端端口"
	read wsport
	sed -i "3c server_port = ${wsport}" frpc.ini
elif [ $ask1 == $ask3 ]
then
	echo "已选择不需要修改"
else
	echo "请输入yes/no"
fi 
echo "输入网站唯一别称"
read webname
echo -e "\n[${webname}]" >> frpc.ini
echo "输入网站类型http/https"
read webhttp
echo "type = ${webhttp}" >> frpc.ini
echo "输入本地web端口"
read webport
echo "local_port = ${webport}" >> frpc.ini
echo "输入网站域名"
read webdomain
echo "custom_domains = ${webdomain}" >> frpc.ini
