---
name: dev-horoscope
description: >-
  Génère l'horoscope cosmique et décalé du développeur selon les constellations tech
  (ex: Mercure rétrograde dans Git, Jupiter aligné avec Docker). À utiliser lorsque l'utilisateur
  demande son horoscope, sa chance du jour, ou une prédiction astrale pour ses commits et déploiements.
---

# 🔮 Horoscope Cosmique du Développeur (Skill Antigravity)

Ce skill permet à l'agent d'invoquer les astres du cloud et de délivrer une prédiction astrale personnalisée pour la journée de dev.

## 🚀 Étapes d'exécution

1. **Consulter la Carte Astrale** :
   - Consulter la carte des signes et influences tech : [Signes Astrologiques Tech](./references/astral-signs.md).
   - Déterminer le signe tech de l'utilisateur (ex: Bélier du Backend, Vierge du TypeScript, Scorpion du DevOps) ou tirer un thème général.

2. **Exécuter l'Oracle Numérique (Script PowerShell)** :
   - Exécuter le script de tirage astral : [scripts/horoscope.ps1](./scripts/horoscope.ps1).
   - Ce script génère une configuration stellaire aléatoire avec un ASCII art céleste.

3. **Restitution Cosmique** :
   - Dévoiler les prédictions dans les 3 maisons astrales :
     - 🪐 **Maison du Code** (compilations, bugs, syntaxe).
     - 🚀 **Maison de la Prod** (déploiements, serveurs, pipelines).
     - ☕ **Maison de la Pause Café** (ambiance d'équipe, réunions évitées).
   - Terminer par le **Chiffre Chance du Dev** (ex: *404*, *200*, *503* ou *42*).
