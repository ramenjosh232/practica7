# Usa una imagen base de Node.js para una aplicación web en Express
FROM node:18-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de la aplicación a la carpeta /app
COPY . .

# Instala las dependencias de Node.js
RUN npm install

# Expone el puerto en el que correrá la aplicación
EXPOSE 3000

# Define el comando para ejecutar la aplicación
CMD ["node", "index.js"]
