# 🐳 Module 1 : Concepts Fondamentaux

Bienvenue dans le monde des conteneurs. Ici, nous posons les bases théoriques et pratiques de Docker.

## 🎯 Objectifs
- Comprendre la différence Conteneur vs Machine Virtuelle (VM).
- Appréhender l'architecture Docker (Client-Serveur).
- Lancer vos premiers conteneurs en ligne de commande.

## 🧠 Théorie : C'est quoi un Conteneur ?
Contrairement à une VM qui virtualise le **matériel** (CPU, RAM) et embarque un OS complet (lourd, lent à démarrer), un conteneur virtualise l'**OS** (Noyau Linux).
- **Léger** : Quelques Mo au lieu de plusieurs Go.
- **Rapide** : Démarrage en quelques millisecondes.
- **Portable** : "Build once, Run anywhere".

## 🏗️ Architecture Docker
- **Docker Daemon (`dockerd`)** : Le moteur qui tourne en tâche de fond. Il gère les conteneurs.
- **Docker Client (`docker`)** : L'outil CLI que vous utilisez. Il envoie des ordres au Daemon via une API REST.
- **Docker Registry (Docker Hub)** : L'endroit où sont stockées les images (comme GitHub pour le code).

## 🛠️ Premiers Pas
L'unité de base est l'**Image** (le moule) qui permet de créer des **Conteneurs** (les gâteaux).

```bash
# 1. Télécharger une image (Pull)
docker pull alpine

# 2. Lancer un conteneur et exécuter une commande
docker run alpine echo "Bonjour Docker !"

# 3. Mode Interactif (-it)
docker run -it alpine /bin/sh
```
