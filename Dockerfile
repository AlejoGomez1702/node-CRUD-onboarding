# Utiliza una imagen base de Node.js
FROM node:18

# Directorio de trabajo en el contenedor
WORKDIR /app

# Copia el archivo package.json y package-lock.json
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto de los archivos de la aplicación
COPY . .

# Puerto en el que la aplicación Express escuchará
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["node", "app.js"]
