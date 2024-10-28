Exportar Listas de Distribución a Excel

Get-DistributionGroupMember -Identity "CORREO DE LISTA DE DISTRIBUCION" | 
Select-Object "Identity", "Alias", "FirstName", "LastName", "Name", "Office", "Title", "WindowsLiveID", "WhenMailboxCreated", "Id", "ExternalEmailAddress" | 
Export-CSV -Path "C:\pba\CORREO DE LISTA DE DISTRIBUCION.csv" -NoTypeInformation
