# 🏗️ Module 2 : Création d'Images (Le Dockerfile)

Utiliser les images des autres, c'est bien. Créer les siennes, c'est mieux. Le `Dockerfile` est la recette de cuisine de votre image.

## 🎯 Objectifs
- Comprendre les instructions clés (`FROM`, `RUN`, `COPY`, `CMD`).
- Optimiser le build (Gestion du cache).
- Réduire la taille des images avec le **Multi-Stage Build**.

## 📝 Syntaxe Dockerfile
Voici les instructions les plus courantes :

| Instruction | Rôle | Exemple |
| :--- | :--- | :--- |
| **FROM** | L'image de base (OS, Langage). Toujours en premier. | `FROM python:3.9-slim` |
| **WORKDIR** | Définit le dossier de travail (comme `cd`). | `WORKDIR /app` |
| **COPY** | Copie des fichiers de l'hôte vers l'image. | `COPY . .` |
| **RUN** | Exécute une commande PENDANT le build (install). | `RUN pip install flask` |
| **CMD** | La commande exécutée au LANCEMENT du conteneur. | `CMD ["python", "app.py"]` |
| **EXPOSE** | Documente le port écouté (informatif). | `EXPOSE 5000` |

## ⚙️ Exercice Pratique
Dans le dossier `mon_app_python` :
1. Examinez le code `app.py`.
2. Lisez le `Dockerfile`.
3. Construisez l'image :
   ```bash
   docker build -t mon-python-app .
   ```
4. Lancez le conteneur :
   ```bash
   docker run -p 5000:5000 mon-python-app
   ```
5. Ouvrez `http://localhost:5000`.
