# kvm.scripts
## Script Install
### vmx
Do on Host:
- put to /srv/kvm/bin/vmx
- chmod +x /srv/kvm/bin/vmx
- ln -s /srv/kvm/bin/vmx /usr/local/sbin/vmx
### Usage
#### vmc (VM Create)
If you type `vnc` a VM will be cerated using default values.  
The Default Values are:
```bash
vmc alma --vcpu=2 --memory=2097152 --nr=$nextfree$ --template=/srv/kvm/templates/alma_template.xml --descr=" "
```
You can customzie those values with 
```bash
vmc
  alma|cent|rhel          Choose which Distro will be used
  --vcpu=2                Ammount of vCPU the System gets
  --memory=2097152        Ammount of Memory the System gets in KiB
  --nr=10                 Nr the VM gets assigned (ex. alma10)
  --template=path         Path to Template
  --descr="Test Ansible"  Description
```
