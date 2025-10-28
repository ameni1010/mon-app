# Utiliser l'image Node officielle
FROM node:18-alpine

# Créer le dossier de l'app
WORKDIR /app

# Copier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste de l'application
COPY . .

# Exposer le port
EXPOSE 3000

# Lancer l'application
CMD ["node", "index.js"]
