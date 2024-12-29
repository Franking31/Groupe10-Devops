# Utiliser l'image de base python:3.6-alpine
FROM python:3.6-alpine

# Définir le répertoire de travail
WORKDIR /opt

# Copier les fichiers nécessaires dans l'image
COPY . .

# Installer les dépendances
RUN pip install Flask

# Définir les variables d'environnement
ENV ODOO_URL="http://odoo.local" PGADMIN_URL="http://pgadmin.local"

# Exposer le port utilisé par l'application
EXPOSE 8080

# Lancer l'application
ENTRYPOINT ["python"]
CMD ["app.py"]

