# centos7 网络配置

设置开机自启

```shell
cd /etc/sysconfig/network-scripts
# 编辑网卡ifcfg-e....
TYPE=Ethernet
PROXY_METHOD=none
BROWSER_ONLY=no
BOOTPROTO=dhcp
DEFROUTE=yes
IPV4_FAILURE_FATAL=no
IPV6INIT=yes
IPV6_AUTOCONF=yes
IPV6_DEFROUTE=yes
IPV6_FAILURE_FATAL=no
IPV6_ADDR_GEN_MODE=stable-privacy
NAME=e....
UUID=daff4a7c-8126-4acc-9b04-001a282d262f
DEVICE=e....
ONBOOT=yes  # 这里 no 改为 yes （只改这里一处）

# 设置静态ip

# 编辑网卡ifcfg-e.....
TYPE="Ethernet"
BOOTPROTO="static" # dhcp 改为 static 
DEFROUTE="yes"
PEERDNS="yes"
PEERROUTES="yes"
IPV4_FAILURE_FATAL="no"
IPV6INIT="yes"
IPV6_AUTOCONF="yes"
IPV6_DEFROUTE="yes"
IPV6_PEERDNS="yes"
IPV6_PEERROUTES="yes"
IPV6_FAILURE_FATAL="no"
NAME="eth0"
UUID="bb3a302d-dc46-461a-881e-d46cafd0eb71"
ONBOOT="yes"           # 开机启用本配置
IPADDR=192.168.7.106   # 静态 IP
GATEWAY=192.168.7.1    # 默认网关
NETMASK=255.255.255.0  # 子网掩码
DNS1=192.168.7.1       # DNS 配置
# 注意：只修改带注释的内容，如果没有则添加

# 重启网络
service network restart

# 保存退出之后 ping 一下外网 

ping baidu.com

# 64 bytes from 220.181.38.148 (220.181.38.148): icmp_seq=1 ttl=128 time=84.9 ms  # 有数字则就好了
```

