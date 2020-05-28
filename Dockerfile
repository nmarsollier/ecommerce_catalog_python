# Docker para desarrollo
FROM python:3.8.3-buster

ENV RABBIT_URL host.docker.internal
ENV MONGO_URL host.docker.internal
ENV AUTH_SERVICE_URL host.docker.internal
ENV AUTH_SERVICE_PORT 3000

WORKDIR /app

COPY requirements.txt .
RUN pip install -U -r requirements.txt

# Puerto auth service
EXPOSE 3002

CMD python run.py
