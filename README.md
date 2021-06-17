# kvm.scripts
## Script Install
### vmx
Do on Host:
- put to /srv/kvm/bin/vmx
- chmod +x /srv/kvm/bin/vmx
- ln -s /srv/kvm/bin/vmx /usr/local/sbin/vmx
### Usage
#### vmc (VM Create)
Will create a new Virtual Machine running within the development Network.  
If you type `vmc` a VM will be cerated using default values.  
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
#### vmd (VM Delete)
Will delete the selected Virtual Machine.  
```bash
vmd alma10
```
#### vms (VM Start)
Will start the selected Virtual Machine.
```bash
vms alma10
```
#### vme (VM End)
Will Stop the selected Virtual Machine.
```bash
vme alma10
```

#### vml (VM List)
Will List al running Virtual Machine's.  
```bash
vml
```
