# Règles : Sécurité & Confidentialité

Directives obligatoires pour la sécurité des données et du code.

## 1. Secrets et Variables d'Environnement
- **Interdiction absolue** de versionner des tokens, mots de passe, clés d'API privées.
- Utiliser systématiquement des fichiers `.env` ignorés par Git (`.gitignore`).
- Fournir un modèle `.env.example` sans valeurs sensibles réelles.

## 2. Validation des Entrées
- Nettoyer et valider toute entrée utilisateur pour prévenir les injections (SQLi, XSS, Command Injection).
- Restreindre les autorisations aux permissions strictement nécessaires (moindre privilège).
