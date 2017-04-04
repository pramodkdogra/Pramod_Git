ulimit -n 10000
echo -e '\n \n' | ssh-keygen -t rsa
chmod 700 ~/.ssh

service ntpd start
/etc/init.d/iptables stop
setenforce 0
echo umask 0022 >> /etc/profile

mkdir -p /var/www/html/
service ip6tables stop
service sshd restart
echo never > /sys/kernel/mm/redhat_transparent_hugepage/enabled
echo never > /sys/kernel/mm/redhat_transparent_hugepage/defrag

yum install -y epel=release yum-utils createrepo ntp pdsh pip
