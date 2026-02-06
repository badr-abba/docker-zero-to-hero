#!/bin/bash

# Exercice : Réseau Bridge
# Deux conteneurs 'alpine' qui se pinguent.

NET_NAME="mon-reseau-prive"

echo "1. Création du réseau..."
docker network create $NET_NAME

echo "2. Lancement du conteneur 'serveur'..."
docker run -d --net $NET_NAME --name serveur alpine sleep 1000

echo "3. Lancement du conteneur 'client' et ping vers 'serveur'..."
# On est DANS le conteneur client, on ping 'serveur' par son nom !
docker run --rm --net $NET_NAME client alpine \
  ping -c 3 serveur

echo "4. Nettoyage..."
docker stop serveur
docker rm serveur
docker network rm $NET_NAME
