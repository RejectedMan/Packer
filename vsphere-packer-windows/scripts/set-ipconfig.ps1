$ipAddress = "163.242.0.220"
$subnetMask = 27
$gateway = "163.242.0.222"
$dnsServers = "163.242.193.150,163.242.219.20,163.242.193.151"
$AddressFamily = "IPv4"

$adapter = Get-NetAdapter | Where-Object { $_.InterfaceDescription -like "*vmxnet3*" }
Set-NetIPInterface -InterfaceAlias Ethernet0 -Dhcp Disabled
# Set static IP-address
$adapter | New-NetIPAddress -IPAddress $ipAddress -PrefixLength $subnetMask -AddressFamily $AddressFamily
# Default route
$adapter | New-NetRoute -DestinationPrefix "0.0.0.0/0" -NextHop $gateway
# DNS settings
$adapter | Set-DnsClientServerAddress -ServerAddresses $dnsServers