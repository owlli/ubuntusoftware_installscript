#!/bin/bash
#这是我的ubuntu18.04重装系统后需要安装的软件和库

sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install libgl1-mesa-dev -y
sudo apt-get install libglu1-mesa-dev -y
sudo apt-get install freeglut3-dev -y
sudo apt-get install vim -y
sudo apt-get install minicom -y
sudo apt-get install openssh-client -y
sudo apt-get install openssh-server -y
sudo  /etc/init.d/ssh restart
sudo apt-get install ncurse* -y
sudo apt-get install git -y
sudo apt-get install texinfo -y
sudo apt-get install bison -y
sudo apt-get install flex -y
sudo apt-get install gimp -y
sudo apt-get install tftpd-hpa -y
sudo /etc/init.d/tftpd-hpa restart
sudo apt-get install lib32stdc++6  -y
sudo apt-get install android-toolsastboot  -y
sudo apt-get install nfs-kernel-server  -y
sudo /etc/init.d/nfs-kernel-server start
sudo apt-get install ctags  -y
sudo apt-get install wireshark  -y
sudo apt-get  install libreadline6-dev libreadline-dev  -y
sudo apt-get install zlib1g-dev  -y
sudo apt-get install  libx32z1-dev  -y
sudo apt-get install lib32z1  -y
sudo apt-get install  unrar  -y
sudo apt install tree  -y
sudo apt-get install lftp  -y
sudo apt-get install libmad0-dev  -y
sudo apt-get install p7zip  -y
sudo apt-get install libgstreamer0.10-dev gstreamer-tools gstreamer0.10-tools gstreamer0.10-doc  -y
sudo apt-get install gstreamer0.10-plugins-base gstreamer0.10-plugins-good  -y

#安装网络工具
sudo apt install net-tools -y
#openssl的库
sudo apt install libssl-dev -y
#安装gnome优化工具
sudo apt install gnome-tweak-tool
#安装完整man手册
sudo apt-get install manpages-de  manpages-de-dev  manpages-dev glibc-doc manpages-posix-dev manpages-posix -y
#压缩软件rar
sudo apt-get install rar -y
#截图工具
sudo apt-get install shutter -y
#nmap
sudo apt install nmap -y
#不安装这个编译s5p6818的buildroot文件系统时会报错,提示"makeinfo:Command not found"
sudo apt install texinfo -y
#安装mkimage等工具
sudo apt-get install u-boot-tools -y
#可以使用errno -l命令打印所有error number
sudo apt install moreutils -y
#查看io工具
sudo apt install iotop -y
#shadowsocks
sudo apt install shadowsocks -y
#安装非常好用的截图工具flameshot
sudo apt-get install flameshot -y
#安装类似windows上画图的工具kolourpaint
sudo apt-get install  kolourpaint4 -y
#安装黏贴板管理工具
sudo apt-get install clipit



#待安装
#
#搜狗输入法
#chrome
#中国版火狐
#蓝灯
#词典
#vnc_viewer
#goldendict

#下面是安装我自己的写的脚本
mkdir -p ~/bin
#启动shadowsocks的脚本
cp ./myshellscript/mysslocal.sh ~/bin


