#!/bin/bash

# Exercice : Bind Mount
# On va créer un fichier index.html sur notre machine hôte
# et le servir via un conteneur Nginx.

echo "1. Création du fichier index.html sur l'hôte..."
echo "<h1>Salut depuis l'Hote !</h1>" > index.html

echo "2. Lancement du conteneur Nginx avec Bind Mount..."
# $(pwd) récupère le dossier actuel (sous Linux/Mac/GitBash)
# On mappe le fichier local vers /usr/share/nginx/html/index.html
docker run -d -p 8080:80 \
  -v "$(pwd)/index.html:/usr/share/nginx/html/index.html" \
  --name mon-nginx-bind \
  nginx

echo "3. Testez ! Ouvrez http://localhost:8080"
echo "4. Modifiez le fichier index.html localement et rafraichissez la page."
echo "   La modif est immédiate sans redémarrer le conteneur !"
