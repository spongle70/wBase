#Get-NetFirewallRule -DisplayGroup 'Network Discovery'
Set-NetFirewallRule -DisplayGroup 'Network Discovery' -Profile 'Private' -Enabled true
Set-NetFirewallRule -DisplayGroup 'File And Printer Sharing' -Profile 'Private' -Enabled true

Get-NetConnectionProfile -InterfaceAlias "Ethernet" | Set-NetConnectionProfile -NetworkCategory Private
Get-NetConnectionProfile -InterfaceAlias "WiFi" | Set-NetConnectionProfile -NetworkCategory Private
#Get-NetConnectionProfile -InterfaceAlias "Ethernet1" | Set-NetConnectionProfile -NetworkCategory Private

#select Name,DisplayName,Enabled,Profile|ft -a
