
Identificar y Eliminar Licencias

# Comando para E3
$x = Get-Content "C:\documentos\prueba.txt"
$e3Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'SPE_E3'
$ee3Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'IDENTITY_THREAT_PROTECTION'

for ($i = 0; $i -lt $x.Count; $i++) {
    Set-MgUserLicense -UserId $x[$i] -RemoveLicenses @($e3Sku.SkuId, $ee3Sku.SkuId) -AddLicenses @{}
}

# Comando para E1
$x = Get-Content "C:\documentos\prueba.txt"
$e1Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'STANDARDPACK'
$ee1Sku = Get-MgSubscribedSku -All | Where SkuPartNumber -eq 'ATP_ENTERPRISE'

for ($i = 0; $i -lt $x.Count; $i++) {
    Set-MgUserLicense -UserId $x[$i] -RemoveLicenses @($e1Sku.SkuId, $ee1Sku.SkuId) -AddLicenses @{}
}