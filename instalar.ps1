# Fábrica de Video — instalador para Windows
# Uso:  clic derecho -> "Ejecutar con PowerShell"   (o:  powershell -ExecutionPolicy Bypass -File instalar.ps1)
# Prueba sin tocar tu equipo:  .\instalar.ps1 -Destino C:\ruta\de\prueba
param([string]$Destino = "")
$ErrorActionPreference = "Stop"
$aqui = Split-Path -Parent $MyInvocation.MyCommand.Path
if (-not $Destino) { $Destino = Join-Path $env:USERPROFILE ".claude\skills" }
$origen = Join-Path $aqui "skills"
if (-not (Test-Path $origen)) { Write-Host "No encuentro la carpeta 'skills' junto a este archivo. Descomprime el ZIP completo y vuelve a intentar." -ForegroundColor Red; exit 1 }
$version = (Get-Content (Join-Path $aqui "VERSION") -ErrorAction SilentlyContinue | Select-Object -First 1)
Write-Host ""
Write-Host "Fábrica de Video $version" -ForegroundColor Cyan
Write-Host "Se copiarán las skills en: $Destino"
New-Item -ItemType Directory -Force $Destino | Out-Null
$stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$copias = 0; $respaldos = 0
foreach ($d in Get-ChildItem $origen -Directory) {
    $dest = Join-Path $Destino $d.Name
    if (Test-Path $dest) {
        $carpetaBak = Join-Path (Split-Path $Destino -Parent) "skills-respaldo"
        New-Item -ItemType Directory -Force $carpetaBak | Out-Null
        $bak = Join-Path $carpetaBak "$($d.Name)-$stamp"
        Move-Item $dest $bak
        $respaldos++
        Write-Host "  Ya tenías '$($d.Name)': la versión anterior quedó en $bak" -ForegroundColor Yellow
    }
    Copy-Item $d.FullName $dest -Recurse -Force
    $copias++
    Write-Host "  ✔ $($d.Name)"
}
foreach ($f in "ejemplos") {
    $p = Join-Path $aqui $f
    if (Test-Path $p) { Copy-Item $p (Join-Path $Destino "fabrica-de-video\$f") -Recurse -Force }
}
Write-Host ""
Write-Host "Listo: $copias skills instaladas ($respaldos respaldadas)." -ForegroundColor Green
Write-Host ""
Write-Host "Siguiente paso:"
Write-Host "  1. Crea una carpeta 'Reels con Claude' en Documentos."
Write-Host "  2. Abre Claude Code dentro de esa carpeta."
Write-Host "  3. Escribe:  Quiero empezar con la Fábrica de Video"
Write-Host ""
Write-Host "Guía paso a paso: ver LEEME.md"
if ($Host.Name -eq "ConsoleHost" -and -not $PSBoundParameters.ContainsKey("Destino")) { Read-Host "Pulsa Enter para cerrar" | Out-Null }
