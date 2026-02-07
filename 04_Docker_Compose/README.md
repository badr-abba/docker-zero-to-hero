# 🎼 Module 4 : Orchestration (Docker Compose)

Lancer 10 conteneurs avec `docker run` est un cauchemar. Docker Compose est là pour gérer des **applications multi-conteneurs** avec un seul fichier YAML.

## 🎯 Objectifs
- Écrire un `docker-compose.yml`.
- Lancer toute une stack avec `docker-compose up`.
- Gérer les variables d'environnement.

## 📝 Le fichier docker-compose.yml
Il décrit vos services, réseaux et volumes.

```yaml
version: '3.8'

services:
  web:
    build: .
    ports:
      - "5000:5000"
    depends_on:
      - redis
  
  redis:
    image: "redis:alpine"
```

## 🚀 Commandes Magiques
| Commande | Action |
| :--- | :--- |
| `docker-compose up -d` | Construit et lance tout en arrière-plan. |
| `docker-compose ps` | Voir l'état de la stack. |
| `docker-compose logs -f` | Suivre les logs de tous les services. |
| `docker-compose down` | Tout arrêter et supprimer (réseaux inclus). |
