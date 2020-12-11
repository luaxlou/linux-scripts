# linux-scripts
linux useful scripts. 一些linux相关的脚本和文档，方便linux运维。





linux常用指令：

- lsb_release -a 查看Linux 发行版本
- ssh-keygen -t rsa 生成id_rsa
- lsof -i:80 查看端口号进程
- curl ipinfo.io 查看本机公网ip

机器性能判断：

- 当前TCP连接查看： netstat -n | awk '/^tcp/ {++S[$NF]} END {for(a in S) print a, S[a]}' 

