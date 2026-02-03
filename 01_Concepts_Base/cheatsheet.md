# 📜 Docker Cheat Sheet

## 🏃 Conteneurs (Lancer & Gérer)
| Commande | Description |
| :--- | :--- |
| `docker run <image>` | Crée et lance un conteneur. |
| `docker run -d <image>` | Lance en arrière-plan (**d**etached). |
| `docker run -p 8080:80 <image>` | Mappe le port 80 du conteneur sur le 8080 de l'hôte. |
| `docker ps` | Liste les conteneurs actifs. |
| `docker ps -a` | Liste TOUS les conteneurs (même arrêtés). |
| `docker stop <id>` | Arrête proprement un conteneur. |
| `docker rm <id>` | Supprime un conteneur (doit être arrêté). |
| `docker rm -f <id>` | Force la suppression (même si actif). |
| `docker logs <id>` | Affiche les logs du conteneur. |
| `docker exec -it <id> bash` | Ouvre un terminal DANS le conteneur. |

## 📦 Images (Gérer les modèles)
| Commande | Description |
| :--- | :--- |
| `docker images` | Liste les images locales. |
| `docker pull <image>` | Télécharge une image depuis le Hub. |
| `docker rmi <image>` | Supprime une image locale. |
| `docker build -t <nom> .` | Construit une image depuis un Dockerfile. |

## 🧹 Nettoyage (Prune)
| Commande | Description |
| :--- | :--- |
| `docker system prune` | Supprime tout ce qui n'est pas utilisé (conteneurs arrêtés, réseaux orphelins). |
| `docker container prune` | Supprime uniquement les conteneurs arrêtés. |
