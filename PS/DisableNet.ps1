#Get-NetFirewallRule -DisplayGroup 'Network Discovery'
Set-NetFirewallRule -DisplayGroup 'Network Discovery' -Profile 'Private' -Enabled false
Set-NetFirewallRule -DisplayGroup 'File And Printer Sharing' -Profile 'Private' -Enabled false

#select Name,DisplayName,Enabled,Profile|ft -a