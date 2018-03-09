text
cdrom
auth --enableshadow --passalgo=sha512
keyboard --vckeymap=us --xlayouts='us'
lang en_US.UTF-8
eula --agreed
reboot

# network configuration

network --bootproto=static --ip=CHANGE_IP --gateway=CHANGE_GATE  --netmask=CHANGE_NETMASK  --noipv6 --device=eth0 --nameserver=CHANGE_NS --ACTIVATE
network  --hostname=CHANGE_HOSTNAME
timezone UTC

# remote repo
url --url="http://mirror.centos.org/centos/7/os/x86_64/"

# add repo for laster
repo --name=base --baseurl="http://mirror.centos.org/centos/7/os/x86_64/"

# partitioning

ignoredisk --only-use=vda
bootloader --location=mbr --boot-drive=vda
zerombr
clearpart --none --initlabel
autopart --type=lvm

# security

rootpw password 
selinux --enforcing

# Software Packages

%packages --nobase --ignoremissing
@core
@base
vim 
bash-completion

%end
