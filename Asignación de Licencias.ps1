Asignación de Licencias

Asignación de Licencias E3 y E5

$emails = Get-Content -Path "C:\Q.txt"

foreach ($email in $emails) {
    $user = Get-MgUser -UserId $email

    if (-not $user.UsageLocation) {
        Write-Host "Estableciendo la ubicación de uso para $email..."
        Update-MgUser -UserId $email -UsageLocation "MX"
    }

    $licensesToAssign = @(
        [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignedLicense]@{SkuId = [Guid]::Parse("26124093-3d78-432b-b5dc-48bf992543d5")},  # IDENTITY_THREAT_PROTECTION
        [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignedLicense]@{SkuId = [Guid]::Parse("05e9a617-0261-4cee-bb44-138d3ef5d965")}   # SPE_E3
    )

    Write-Host "Asignando licencias a $email..."
    Set-MgUserLicense -UserId $email -AddLicenses $licensesToAssign -RemoveLicenses @()
}

Write-Host "Proceso completado."


Asignación de Licencias E1 y Plan 1


$emails = Get-Content -Path "C:\T.txt"

foreach ($email in $emails) {
    $user = Get-MgUser -UserId $email

    if (-not $user.UsageLocation) {
        Write-Host "Estableciendo la ubicación de uso para $email..."
        Update-MgUser -UserId $email -UsageLocation "MX"
    }

    $licensesToAssign = @(
        [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignedLicense]@{SkuId = [Guid]::Parse("4ef96642-f096-40de-a3e9-d83fb2f90211")},  # ATP_ENTERPRISE
        [Microsoft.Graph.PowerShell.Models.IMicrosoftGraphAssignedLicense]@{SkuId = [Guid]::Parse("18181a46-0d4e-45cd-891e-60aabd171b4e")}   # STANDARDPACK
    )

    Write-Host "Asignando licencias a $email..."
    Set-MgUserLicense -UserId $email -AddLicenses $licensesToAssign -RemoveLicenses @()
}

Write-Host "Proceso completado."


