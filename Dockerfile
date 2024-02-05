# Utiliser l'image officielle de Node.js comme image parente
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers de dépendances
COPY package*.json ./

# Installer les dépendances du projet
RUN npm install

# Copier le reste des sources de l'application dans le répertoire de travail
COPY . .

# Exposer le port sur lequel l'application va tourner
EXPOSE 3000

# Commande pour exécuter l'application
CMD [ "node", "index.js" ]
