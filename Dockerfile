# Usa una imagen base oficial de Odoo
FROM odoo:17.0

# Establece el directorio de trabajo
WORKDIR /mnt/extra-addons

# Copia los archivos fuente de Odoo al contenedor
COPY . /mnt/extra-addons

# Exponer el puerto 8069 para Odoo
EXPOSE 8069

# Comando para iniciar Odoo
CMD ["odoo", "-c", "/etc/odoo/odoo.conf"]
