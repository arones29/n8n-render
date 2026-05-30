# Usa la imagen base oficial de n8n
FROM n8nio/n8n:latest

# Elimina la verificación de origen problemática en Render
RUN sed -i 's/throw new ResponseError("Invalid origin!")/\/\/ Patched for Render: Origin check disabled/' \
    /usr/local/lib/node_modules/n8n/dist/push/index.js

# El comando por defecto para iniciar n8n ya está heredado (CMD ["n8n"])
