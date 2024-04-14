FROM python:3.6-slim-buster

WORKDIR /app

# ENV Flask-app main.py

COPY requirements.txt ./

# Instala las dependencias
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0", "--port=5000"]