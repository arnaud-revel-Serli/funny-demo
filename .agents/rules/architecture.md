# Règles : Principes d'Architecture

Règles guidant la structure des projets et l'organisation des modules.

## 1. Séparation des Responsabilités (SoC)
- Séparer nettement la logique métier, la couche de persistance/données et l'interface utilisateur.
- Éviter d'insérer du code métier directement dans les composants de rendu visuel.

## 2. Modularité
- Préférer la composition à l'héritage lourd.
- Encapsuler les fonctionnalités réutilisables dans des services ou des modules dédiés.
- Préserver des interfaces claires et minimales entre sous-systèmes.
