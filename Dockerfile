# Dockerfile
FROM python:3.13-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de requirements d'abord (optimisation du cache Docker)
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le reste de l'application
COPY . .

# Exposer le port si nécessaire (ajuster selon votre app)
EXPOSE 8000

# Commande par défaut
CMD ["python", "app.py"]