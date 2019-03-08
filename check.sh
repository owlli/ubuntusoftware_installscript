#!/bin/bash

#date:20190308
#author:lzh
#description:对比当前目录下备份的.vimrc,.bashrc和当前家目录中的.vimrc,.bashrc,如果不相同,会给出提示是否用家目录中的.vimrc..bashrc覆盖当前目录下的


checkfile=(	~/.vimrc ~/.bashrc)

#echo ${#checkfile[@]}
for ((i=0;i<${#checkfile[@]};i++))
do
#echo ${checkfile[$i]}
echo "开始对比当前目录下的${checkfile[$i]##*/}和${checkfile[$i]}"
diff -Naur ${checkfile[$i]##*/} ${checkfile[$i]}
if [ $? != 0 ];then
	read -p "${checkfile[$i]##*/} 和 ${checkfile[$i]} 内容不相同,是否用${checkfile[$i]}覆盖当前目录下的${checkfile[$i]##*/}? [Y/n] " yorn
	if [ ${yorn} == "y" -o ${yorn} == "Y" ];then
		mv ${checkfile[$i]} ${checkfile[$i]##*/}
	elif [ ${yorn} == "n" -o ${yorn} == "N" ];then
		echo "取消使用${checkfile[$i]}覆盖当前目录下的${checkfile[$i]##*/}"
	else
		echo "输入错误!立即退出!"
		exit 1
	fi
else
	echo "当前目录下的${checkfile[$i]##*/}和${checkfile[$i]}完全相同"
	echo "------------------------------------------------------------------------------"
	fi
done



