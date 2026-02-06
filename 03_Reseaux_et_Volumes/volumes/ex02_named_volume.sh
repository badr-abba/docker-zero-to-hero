#!/bin/bash

# Exercice : Volume Nommé
# On va créer un conteneur qui écrit des données.
# On le supprime.
# On en recrée un autre qui récupère les mêmes données.

VOL_NAME="mon-volume-persistant"

echo "1. Création du volume..."
docker volume create $VOL_NAME

echo "2. Lancement du conteneur 'c1' qui écrit dans le volume..."
docker run --rm -v $VOL_NAME:/data alpine \
  sh -c "echo 'Donnée secrète' > /data/secret.txt"

echo "   Donnée écrite. Le conteneur 'c1' est supprimé (--rm)."

echo "3. Lancement du conteneur 'c2' qui lit le volume..."
docker run --rm -v $VOL_NAME:/data alpine \
  cat /data/secret.txt

echo "4. Nettoyage..."
docker volume rm $VOL_NAME
