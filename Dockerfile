FROM hub.c.163.com/public/ubuntu:14.04
COPY data/* /tmp/
RUN apt-get -y update && apt-get install -y iproute2 iputils-arping net-tools tcpdump curl telnet iputils-tracepath traceroute
# 自定义想安装的软件
RUN apt-get install -y vim \
&& mv /usr/sbin/tcpdump /usr/bin/tcpdump \
&& chmod +x /tmp/run.sh
ENTRYPOINT /bin/bash -c /tmp/run.sh
