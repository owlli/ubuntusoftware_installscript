#!/bin/bash

#date:20190308
#author:lzh
#description:对比当前目录下备份的.vimrc,.bashrc和当前家目录中的.vimrc,.bashrc,如果不相同,会给出提示是否用家目录中的.vimrc..bashrc覆盖当前目录下的

checkfile=(	~/.vimrc ~/.bashrc)
checkexist()
{
	if [ ! -f "$2" ];then
		read -p "$2 不存在,是否直接用${1}覆盖${2}? [Y/n] " yorn
		case $yorn in
		y | Y)
			cp $1 ~/
			;;
		n | N)
			;;
		*)
			echo "输入错误,立即退出!"
			exit 1
			;;
		esac
	fi
}

#检查当前目录下文件是否存在
echo "检查仓库文件完整性"
for ((i=0;i<${#checkfile[@]};i++))
do
	localfile=${checkfile[$i]##*/}
	if [ ! -f "$localfile" ];then
		echo "$localfile 不存在,请检查仓库的完整性!"
		exit 1
	fi
done
echo "仓库文件完整!"

#echo ${#checkfile[@]}
for ((i=0;i<${#checkfile[@]};i++))
do
	localfile=${checkfile[$i]##*/}
	checkexist ${localfile} ${checkfile[$i]}
	#echo ${checkfile[$i]}
	echo "开始对比当前目录下的${localfile}和${checkfile[$i]}"
	diff -Naur ${localfile} ${checkfile[$i]}
	if [ $? != 0 ];then
		#read -p "${localfile} 和 ${checkfile[$i]} 内容不相同,是否用${checkfile[$i]}覆盖当前目录下的${localfile}? [Y/n] " yorn
		echo "${localfile} 和 ${checkfile[$i]} 内容不相同,请选择:"
		echo "1.用${checkfile[$i]}覆盖当前目录下的${localfile};"
		echo "2.用当前目录下的${localfile}覆盖${checkfile[$i]};"
		echo "3.不进行任何操作;"
		echo "4.立即退出."
		read c

		case $c in
		1)
			cp ${checkfile[$i]} ${localfile}
			echo "已将${checkfile[$i]}覆盖${localfile}"
			;;
		2)
			cp ${localfile} ${checkfile[$i]}
			echo "已将${localfile}覆盖${checkfile[$i]}"
			;;
		3)
			echo "未进行任何操作."
			;;
		4)
			exit 0
			;;
		*)
			echo "数据错误,立即退出!"
			exit 1
			;;
		esac
	else
		echo "当前目录下的${localfile}和${checkfile[$i]}完全相同"
		echo "------------------------------------------------------------------------------"
	fi
done



