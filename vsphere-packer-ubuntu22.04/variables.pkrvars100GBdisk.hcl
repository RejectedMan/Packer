##################################################################################
# VARIABLES
##################################################################################

# HTTP Settings

http_directory = "http"

# Virtual Machine Settings

vm_name                     = "Ubuntu-2204-Template-100GB-Thin"
vm_guest_os_type            = "ubuntu64Guest"
vm_version                  = 14
vm_firmware                 = "bios"
vm_cdrom_type               = "sata"
vm_cpu_sockets              = 1
vm_cpu_cores                = 1
vm_mem_size                 = 4096
vm_disk_size                = 102400
thin_provision              = true
disk_eagerly_scrub          = false
vm_disk_controller_type     = ["pvscsi"]
vm_network_card             = "vmxnet3"
vm_boot_wait                = "5s"
ssh_username                = "ubuntu"
ssh_password                = "ubuntu"

# vm_ip                       = "163.242.0.218"
# vm_gateway                  = "163.242.0.222"
# vm_netmask                  = "27"
# vm_dns                      = "163.242.193.150,163.242.219.20,163.242.193.151"

# ISO Objects

iso_file                    = "ubuntu-22.04.3-live-server-amd64.iso"
iso_checksum                = "a4acfda10b18da50e2ec50ccaf860d7f20b389df8765611142305c0e911d16fd"
iso_checksum_type           = "sha256"
iso_url                     = "https://releases.ubuntu.com/22.04.3/ubuntu-22.04.3-live-server-amd64.iso" 
# Scripts

shell_scripts               = ["./scripts/setup_ubuntu2204_withDocker.sh"]
