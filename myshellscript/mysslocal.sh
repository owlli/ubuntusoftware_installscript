#!/bin/bash

printP()
{
	echo "The parameter can only be \"start\" or \"off\"!"
}

if [ $# -ne 1 ];then
	echo "Missing parameter!"
	printP
	exit 1
fi

case $1 in
"start")
	nohup sslocal -c /etc/shadowsocks/config.json &>> /var/log/sslocal.log &
	if [ "$?" -eq 0 ];then
		echo "sslocal startup success."
	else
		echo "sslocal startup failure."
		exit 1
	fi
	;;
"stop")
	killall sslocal
	if [ "$?" -eq 0 ];then
		echo "sslocal shutdown success."
	else
		echo "sslocal shutdown failure."
		exit 1
	fi
	;;
*)
	echo "Parameter error!"
	printP
	exit 1
	;;
esac
