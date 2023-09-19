# Packer templates for Windows Server using vSphere-ISO provider

This repository contains **HashiCorp Packer** templates to deploy **Windows Server** distros in **VMware vSphere (with vCenter)**, using the **vsphere-iso** builder.

These templates creates the Template (or VM) directly on the vSphere server and install the latest VMware Tools.

# Content: #

Windows Server 2016:
* [win2016.base/win2016.base.json](./win2016.base/win2016.base.json) --> Windows Server 2016 Packer JSON file Base
* [win2016.base/autounattend.xml](./win2016.base/autounattend.xml) --> Answer file for unattended Windows setup

Windows Server 2019:
* [win2019.base/win2019.base.json](./win2019.base/win2019.base.json) --> Windows Server 2019 Packer JSON file Base
* [win2019.base/autounattend.xml](./win2019.base/autounattend.xml) --> Answer file for unattended Windows setup

Windows Server 2022:
* [win2019.base/win2022.base.json](./win2022.base/win2019.base.json) --> Windows Server 2019 Packer JSON file Base
* [win2019.base/autounattend.xml](./win2022.base/autounattend.xml) --> Answer file for unattended Windows setup

Scripts:
* [scripts/disable-network-discovery.cmd](./scripts/disable-network-discovery.cmd) --> Script to Disable network discovery
* [scripts/disable-winrm.ps1](./scripts/disable-winrm.ps1) --> Script to Disable WinRM
* [scripts/enable-rdp.cmd](./scripts/enable-rdp.cmd) --> Script to Enable Remote Desktop
* [scripts/enable-winrm.ps1](./scripts/enable-winrm.ps1) --> Script to Enable WinRM
* [scripts/install-vm-tools.cmd](./scripts/install-vm-tools.cmd) --> Script to Install VMware Tools
* [scripts/set-temp.ps1](./scripts/set-temp.ps1) --> Script to Set Temp Folders
* [scripts/set-ipconfig.ps1](./scripts/set-ipconfig.ps1) --> Script to Set Static IP configuration

Tested with **VMware ESX 7.0.3U** | User: Administrator | Password: QWE098zaq!

# Requirements: #

* Packer --> https://www.packer.io

# How to use: #

```script
cd win2019.base
packer build -var-file=variables.json win2019.baseThin.json
```

# Credits: #

Inspired by [GuillermoMusumeci] https://github.com/guillermo-musumeci/packer-vsphere-iso-windows
