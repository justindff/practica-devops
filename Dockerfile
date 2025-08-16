# Imagen base más ligera
FROM node:18-alpine

# Crear directorio de la app en el contenedor
WORKDIR /app

# Copiar package.json y package-lock.json primero (para cachear npm install)
COPY package*.json ./

# Instalar dependencias
RUN npm install --production

# Copiar el resto de archivos de la app
COPY . .

# Exponer el puerto de la app
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
