# Utilitza una imatge base de Python
FROM python:3.9-slim

# Estableix el directori de treball
WORKDIR /app

# Copia els fitxers de requisits
COPY requirements.txt .

# Instal·la les dependències
RUN pip install --no-cache-dir -r requirements.txt

# Copia el codi de l'aplicació
COPY . .

# Exposa el port 8080 (port per defecte de Cloud Run)
EXPOSE 8080

# Comanda per executar l'aplicació
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
