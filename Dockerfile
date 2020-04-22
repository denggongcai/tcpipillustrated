FROM hub.c.163.com/public/ubuntu:14.04
COPY hosts /tmp
RUN apt-get -y update && apt-get install -y iproute2 iputils-arping net-tools tcpdump curl telnet iputils-tracepath traceroute \
# 自定义想安装的软件
&& apt-get install -y vim \
&& mv /usr/sbin/tcpdump /usr/bin/tcpdump \
&& mv /tmp/hosts /etc/hosts \
&& cat /etc/hosts
ENTRYPOINT /usr/sbin/sshd -D
