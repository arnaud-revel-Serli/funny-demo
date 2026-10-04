# 🚀 Arborescence Antigravity - Guide & Structure

Ce projet intègre l'arborescence standard recommandée pour **Google Antigravity** (IDE, CLI et applications agentiques). Elle permet de structurer les instructions projet, les règles locales, les compétences à la demande (skills), les personas d'agents et les gabarits de prompts.

---

## 📁 Vue d'Ensemble de l'Arborescence

```text
Présentation_MDPA_Démos/
├── AGENTS.md                   # Instructions globales du projet (lues automatiquement)
├── README.md                   # Documentation générale de l'arborescence
└── .agents/                    # Racine de personnalisation Antigravity (projet)
    ├── mcp_config.json         # Déclaration des serveurs MCP (Model Context Protocol)
    ├── hooks.json              # Scripts d'automatisation sur les cycles de vie
    │
    ├── rules/                  # Règles & directives modulaires (toujours actives)
    │   ├── coding-standards.md # Standards de code, nommage, clarté
    │   ├── architecture.md     # Principes d'architecture logicielle
    │   └── security.md         # Règles de sécurité et gestion des secrets
    │
    ├── skills/                 # Compétences à la demande (divulgation progressive)
    │   └── dev-horoscope/
    │       ├── SKILL.md        # Fichier principal avec métadonnées YAML
    │       ├── references/     # Cartes des constellations & signes tech
    │       └── scripts/        # Oracle numérique (horoscope.ps1)
    │
    ├── prompts/                # Gabarits de prompts réutilisables
    │   ├── calculatrice.md     # Génération d'un script arithmétique Python
    │   └── roast-my-code.md    # Roast hilarant façon stand-up & vrais conseils techniques
    │
    └── agents/                 # Définitions de personas et sous-agents spécialisés
        └── detective-noir.md   # Sam Spade, détective privé des bas-fonds de la RAM
```

---

## 🔍 Fonctionnement des Composants

### 1. [AGENTS.md](./AGENTS.md)
Le fichier d'instructions racine. Dès qu'Antigravity ouvre ou travaille dans ce dossier, il prend en compte les directives de ce fichier.

### 2. [Dossier `.agents/rules/`](./.agents/rules/)
Les règles qui s'appliquent de manière permanente pour encadrer la génération de code, la sécurité et le style.

### 3. [Dossier `.agents/skills/`](./.agents/skills/)
Les compétences (*skills*) utilisent la **divulgation progressive** (*progressive disclosure*) : Antigravity ne charge que le `name` et la `description` dans son contexte. Le contenu complet du `SKILL.md` et de son dossier `references/` n'est chargé que lorsque la tâche le nécessite.

### 4. [Dossier `.agents/prompts/`](./.agents/prompts/)
Bibliothèque de prompts calibrés pour des actions spécifiques (revue de code, conception, résolution de bugs).

### 5. [Dossier `.agents/agents/`](./.agents/agents/)
Fiches de rôles pour orchestrer des sous-agents ou assigner des personas avec des contraintes précises lors de tâches complexes.
