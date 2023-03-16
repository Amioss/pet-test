#!/bin/bash

# Installer Docker
apt-get update
apt-get install -y docker.io

# Récupérer le Dockerfile
curl https://github.com/Amioss/pet-test.git/Dockerfile -o Dockerfile

# Construire l'image Docker
docker build -t app_test .

# Exécuter le conteneur Docker
docker run -p 8080:8080 -p 3306:3306 -p 80:80 -d nom-de-votre-image
