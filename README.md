# quick-kvm-shell

## purpose

This scripts are meant to quickly get you up and running on a KVM host.
Setup will install all needed packages and prepare quick VM create/destroy scripts
and a kickstart file. Guest passwords is guest and can be changed in vm_ks.ks template

## quick setup
clone the repo and cd into it

```
git clone https://github.com/vmindru/quick-kvm-shell.git
cd quick-kvm-shell
```

## setup KVM and HTTPD or run setup_kvm

```
sudo ./setup_kvm
```

## to install vim

```
create_vm
```

## to cleanup/remove

```
destroy_vm
```

