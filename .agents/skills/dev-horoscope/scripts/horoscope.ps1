# Oracle Numérique du Développeur
Write-Host "========================================" -ForegroundColor Magenta
Write-Host "     🔮 ORACLE STELLAIRE DU CODE 🔮     " -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Magenta

$art = @"
       .      *     .      .      *
  *      .         .    *      .       .
     .        /\        .       .
  .       *  /  \  *       .        *
    .       / /\ \      .      .
  *   .    / /  \ \   .     *     .
     .    /_/    \_\     .       .
"@
Write-Host $art -ForegroundColor Yellow

$predictions = @(
    "Mercure rétrograde sur votre branche main : risque de conflit de merge légendaire.",
    "Jupiter entre en collision avec Docker : vos conteneurs flotteront en apesanteur.",
    "La Lune illumine votre cache Redis : une requête ultra-rapide changera votre destin.",
    "Vénus s'aligne avec votre linter : vos collègues approuveront votre PR sans le moindre commentaire.",
    "Pluton s'invite en production : ne touchez à rien un vendredi après-midi !"
)

$luckyNumbers = @(42, 200, 404, 503, 1337, 2026)

$selectedPred = $predictions | Get-Random
$selectedLucky = $luckyNumbers | Get-Random

Write-Host "`n✨ Prédiction Astrale :" -ForegroundColor Green
Write-Host "-> $selectedPred" -ForegroundColor White
Write-Host "`n🎲 Nombre Fétiche du Jour : $selectedLucky" -ForegroundColor Cyan
Write-Host "========================================`n" -ForegroundColor Magenta
