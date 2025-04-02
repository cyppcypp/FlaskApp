FROM python:3.10

WORKDIR /app

# Copier les fichiers
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Exposer le port 5000
EXPOSE 5000

# Lancer l’application Flask
CMD ["python", "app.py"]
