# Règles : Standards de Code & Bonnes Pratiques

Ces règles s'appliquent à l'ensemble du code généré ou modifié par les agents.

## 1. Style & Clarté
- Privilégier un code lisible, modulaire et auto-documenté.
- Nommer explicitement les variables, fonctions et classes (camelCase pour JS/TS, snake_case pour Python).
- Éviter les fonctions à rallonge : découper les responsabilités complexes.

## 2. Documentation & Typage
- Documenter les fonctions et composants clés (commentaires JSDoc / Docstrings).
- Expliciter les types lorsque TypeScript ou Python type hints sont utilisés.
- Maintenir les fichiers `README.md` et les schémas à jour lors des évolutions majeures.

## 3. Gestion des Erreurs
- Gérer explicitement les cas limites et les erreurs asynchrones (`try / catch`).
- Fournir des messages d'erreur informatifs dans les logs et pour l'utilisateur.
