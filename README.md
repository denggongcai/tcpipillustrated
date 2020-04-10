# tcpipillustrated

## 环境搭建
1. 系统环境ubuntu 18.04
2. 安装open v switch
``` shell
sudo apt-get -y install openvswitch-common openvswitch-dbg openvswitch-switch python-openvswitch  openvswitch-pki
```
3. 安装docker
``` shell
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"    
 
 sudo apt-get update
 sudo apt-get install docker-ce docker-ce-cli containerd.io   
```
4. 编译镜像`bash ./build.sh` 或者使用现成的`hub.c.163.com/liuchao110119163/ubuntu:tcpip`
5. 启动脚本
``` shell
# 第一个参数就是网卡名称
# 第二个参数是镜像的名称
# 第三个参数"true", 如果是第一次启动需要传
sudo bash ./setupenv.sh eno1 hub.c.163.com/liuchao110119163/ubuntu:tcpip true
```