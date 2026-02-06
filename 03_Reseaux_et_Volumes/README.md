# 💾 Module 3 : Stockage et Réseau

Les conteneurs sont éphémères : si vous supprimez le conteneur, les données disparaissent... Sauf si vous utilisez des **Volumes**. De plus, les conteneurs doivent souvent communiquer entre eux.

## 🎯 Objectifs
- Persister des données (Base de données, Fichiers uploadés).
- Connecter deux conteneurs sur un réseau privé.

## 📦 Les Volumes (Stockage)
Il existe deux méthodes principales :

1.  **Bind Mount** : On lie un dossier de l'hôte vers le conteneur. Idéal pour le développement (le code change en direct).
    ```bash
    docker run -v /chemin/hote:/chemin/conteneur ...
    ```
2.  **Volume Nommé** : Docker gère le stockages (dans `/var/lib/docker/...`). Idéal pour les Bases de Données.
    ```bash
    docker volume create mon_vol
    docker run -v mon_vol:/data ...
    ```

## 🌐 Le Réseau (Networking)
Par défaut, les conteneurs sont isolés. Pour qu'ils se parlent, on crée un réseau **Bridge**.
```bash
docker network create mon-reseau
docker run --net mon-reseau --name app ...
docker run --net mon-reseau --name db ...
```
Désormais, `app` peut pinger `db` par son nom ! C'est le **DNS Docker**.
