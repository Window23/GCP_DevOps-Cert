#Dockerfile - simple Python Flask app
From python:3.11-slim

workdir /app

#install dependencies
COPY requirements.txt 
RUN pip install --no-cache-dir -r requirements.txt

#copy app files

COPY app.py .

#port used by Cloud Run/GKE style contineirs
ENV PORT=8080

#command to run the app
CMD ["python", "app.py"]