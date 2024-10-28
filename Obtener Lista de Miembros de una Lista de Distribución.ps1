Obtener Lista de Miembros de una Lista de Distribución

# Obtén la lista de distribución
$distributionGroup = Get-DistributionGroup -Identity "xcs2_gralenvios@senado.gob.mx"

if ($distributionGroup -eq $null) {
    Write-Error "No se pudo encontrar la lista de distribución 'xcs2_gralenvios@senado.gob.mx'."
    exit
}

# Obtén todos los miembros del grupo
$members = Get-DistributionGroupMember -Identity $distributionGroup.Identity -ResultSize Unlimited

# Crear una lista para almacenar los resultados
$result = @()

$members | ForEach-Object {
    $result += [pscustomobject]@{
        DisplayName = $_.DisplayName
        PrimarySmtpAddress = $_.PrimarySmtpAddress
    }
}

# Exportar los resultados a un archivo CSV en C:\
$result | Export-Csv -Path "C:\xcs2_gralenvios.csv" -NoTypeInformation
