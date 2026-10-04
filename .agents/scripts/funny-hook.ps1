# Hook Antigravity : Affiche une phrase humoristique avant l'exécution d'un outil
param()

$jokes = @(
    "Abracadabra... Que la RAM ne parte pas en fumée !",
    "Allez hop, une gorgée de café pendant que le processeur transpire !",
    "Bip boop bip... Un outil vient d'être invoqué, tenez bien vos claviers !",
    "Roulement de tambour... Espérons que le compilateur soit de bonne humeur !",
    "Paré au décollage ! Attachez vos ceintures d'ingénieur !",
    "Mille sabords ! Un outil prend la mer, vent arrière toute !",
    "Ne touchez à rien... L'IA est en train de négocier avec la matrice !"
)

$joke = $jokes | Get-Random

# Affichage visible dans la console / stderr
[Console]::Error.WriteLine("`n>>> 🎭 [Antigravity Hook] $joke`n")

# Réponse JSON requise par le contrat PreToolUse d'Antigravity
@{
    decision = "allow"
    reason   = "🎭 $joke"
} | ConvertTo-Json -Compress
