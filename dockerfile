# Usar la imagen oficial de nginx
FROM nginx:alpine

# Copiar el archivo HTML personalizado
COPY abraham.html /usr/share/nginx/html/index.html

# Copiar la configuración personalizada de nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Exponer el puerto 80
EXPOSE 80

# Comando para ejecutar nginx
CMD ["nginx", "-g", "daemon off;"]