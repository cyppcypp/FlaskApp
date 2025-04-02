FROM python:3.10

WORKDIR /app

# Copier les fichiers
COPY requirement.txt requirement.txt
RUN pip install --no-cache-dir -r requirement.txt

COPY . .

# Exposer le port 5000
EXPOSE 5000

# Lancer l’application Flask
CMD ["python", "app.py"]
