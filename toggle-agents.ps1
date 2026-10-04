param(
    [ValidateSet("toggle", "enable", "disable", "status")]
    [string]$Action = "toggle"
)

$agentsPath   = Join-Path $PSScriptRoot "AGENTS.md"
$noAgentsPath = Join-Path $PSScriptRoot "NO_AGENTS.md"

function Show-Status {
    if (Test-Path $agentsPath) {
        Write-Host "[ACTIF] AGENTS.md est ACTIF (pris en compte par Antigravity)." -ForegroundColor Green
    } elseif (Test-Path $noAgentsPath) {
        Write-Host "[INACTIF] AGENTS.md est DESACTIVE (nomme NO_AGENTS.md)." -ForegroundColor Yellow
    } else {
        Write-Host "[ERREUR] Aucun fichier AGENTS.md ou NO_AGENTS.md trouve !" -ForegroundColor Red
    }
}

switch ($Action) {
    "status" {
        Show-Status
    }
    "enable" {
        if (Test-Path $agentsPath) {
            Write-Host "AGENTS.md est deja actif." -ForegroundColor Cyan
        } elseif (Test-Path $noAgentsPath) {
            Rename-Item -Path $noAgentsPath -NewName "AGENTS.md" -Force
            Write-Host "AGENTS.md a ete ACTIVE avec succes !" -ForegroundColor Green
        } else {
            Write-Host "Fichier NO_AGENTS.md introuvable." -ForegroundColor Red
        }
    }
    "disable" {
        if (Test-Path $noAgentsPath) {
            Write-Host "AGENTS.md est deja desactive (NO_AGENTS.md)." -ForegroundColor Cyan
        } elseif (Test-Path $agentsPath) {
            Rename-Item -Path $agentsPath -NewName "NO_AGENTS.md" -Force
            Write-Host "AGENTS.md a ete DESACTIVE (renomme en NO_AGENTS.md)." -ForegroundColor Yellow
        } else {
            Write-Host "Fichier AGENTS.md introuvable." -ForegroundColor Red
        }
    }
    "toggle" {
        if (Test-Path $agentsPath) {
            Rename-Item -Path $agentsPath -NewName "NO_AGENTS.md" -Force
            Write-Host "Bascule : AGENTS.md -> NO_AGENTS.md [DESACTIVE]" -ForegroundColor Yellow
        } elseif (Test-Path $noAgentsPath) {
            Rename-Item -Path $noAgentsPath -NewName "AGENTS.md" -Force
            Write-Host "Bascule : NO_AGENTS.md -> AGENTS.md [ACTIVE]" -ForegroundColor Green
        } else {
            Write-Host "Aucun fichier AGENTS.md ou NO_AGENTS.md trouve." -ForegroundColor Red
        }
    }
}
