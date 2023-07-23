# Utilisez une image de base Node.js
FROM node:14
# Définir le répertoire de travail dans le conteneur
WORKDIR /app
# Copier package.json et package-lock.json
COPY package*.json ./
# Installer les dépendances de l'application
RUN npm install
# Copier le reste des fichiers de l'application
COPY . .
# Exposer le port que votre application utilise
EXPOSE 8080
# Définir la commande pour exécuter votre application
CMD [ "node", "server.js" ]