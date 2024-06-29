FROM python:3.10-slim

WORKDIR /app

RUN pip install --upgrade pip
COPY requirements.txt requirements.txt

# Instale numpy primeiro
RUN pip install numpy

RUN pip install -r requirements.txt

COPY . .

# Adicionar a entrada para mongo_service_nosql no /etc/hosts
# RUN echo "192.168.32.3 mongo_service_nosql" >> /etc/hosts

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
