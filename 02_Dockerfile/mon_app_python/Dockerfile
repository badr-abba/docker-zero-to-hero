# 1. Image de base (Python version 3.9, version légère "slim")
FROM python:3.9-slim

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /app

# 3. Copier le fichier de dépendances
COPY requirements.txt .

# 4. Installer les dépendances
# --no-cache-dir permet de réduire la taille de l'image
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copier le reste du code source
COPY . .

# 6. Exposer le port (Purement documentaire, mais bonne pratique)
EXPOSE 5000

# 7. Commande de démarrage
CMD ["python", "app.py"]
