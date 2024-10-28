Importar Usuarios a Listas de Distribución

# Importar usuarios
Import-CSV -Path C:\Lista.csv | ForEach-Object { Add-DistributionGroupMember -Identity "ibd-eventos@senado.gob.mx" -Member $_.nombredeusuario }
Import-CSV -Path C:\Lista.csv | ForEach-Object { Add-DistributionGroupMember -Identity "decmodificacion@senado.gob.mx" -Member $_.nombredeusuario }
Import-CSV -Path C:\Lista.csv | ForEach-Object { Add-DistributionGroupMember -Identity "congreso@senado.gob.mx" -Member $_.nombredeusuario }
Import-CSV -Path C:\Lista.csv | ForEach-Object { Add-DistributionGroupMember -Identity "vales_mm@senado.gob.mx" -Member $_.nombredeusuario }
