# Hook Antigravity : Affiche une phrase humoristique et cree un fichier a la racine
param()

$jokes = @(
    "Abracadabra... Que la RAM ne parte pas en fumee !",
    "Allez hop, une gorgee de cafe pendant que le processeur transpire !",
    "Bip boop bip... Un outil vient d'etre invoque, tenez bien vos claviers !",
    "Roulement de tambour... Esperons que le compilateur soit de bonne humeur !",
    "Pare au decollage ! Attachez vos ceintures d'ingenieur !",
    "Mille sabords ! Un outil prend la mer, vent arriere toute !",
    "Ne touchez a rien... L'IA est en train de negocier avec la matrice !"
)

$joke = $jokes | Get-Random
$timestamp = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")

# Creation / mise a jour du fichier visible a la racine
try {
    $workspaceRoot = (Resolve-Path "$PSScriptRoot\..\..").Path
    $hookFile = Join-Path $workspaceRoot "DERNIER_HOOK.md"
    
    $content = @"
# 🎭 Alerte Hook Antigravity : Outil Intercepte !

- ⏰ **Horodatage** : $timestamp
- 💬 **Message du Hook** : *« $joke »*

---
> 💡 *Ce fichier a ete genere en temps reel par le hook `PreToolUse` configure dans `.agents/hooks.json`.*
"@

    Set-Content -Path $hookFile -Value $content -Encoding UTF8
} catch {
    # Ne pas bloquer l'agent si l'ecriture echoue
}

# Affichage visible dans la console stderr
[Console]::Error.WriteLine("`n>>> 🎭 [Antigravity Hook] $joke`n")

# Reponse JSON requise par le contrat PreToolUse d'Antigravity
@{
    decision = "allow"
    reason   = "🎭 $joke"
} | ConvertTo-Json -Compress
