Get-AzureVnetConfig -ExporttoFile "path\filename.xml"
#This XML can then be edited and uploaded to the Azure fabric for execution - friggin awesome

Set-AzureVNetConfig -ConfigurationPath "path\filename.xml"
#Finally, set the IPSec shared key

PS D:\> Set-AzureVNetGatewayKey -VNetName VNet01 -LocalNetworkSiteName VNet02 -SharedKey Keldai881244
PS D:\> Set-AzureVNetGatewayKey -VNetName VNet02 -LocalNetworkSiteName VNet01 -SharedKey Keldai881244

#Check connectivity
PS D:\> Get-AzureVNetConnection -VNetName VNet1 | ft LocalNetworkSiteName, ConnectivityState