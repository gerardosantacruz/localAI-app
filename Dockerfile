FROM debian:bullseye-slim

# Instalar dependencias mínimas
RUN apt-get update && apt-get install -y curl unzip && \
    rm -rf /var/lib/apt/lists/*

# Crear carpeta para modelos
RUN mkdir -p /models

# Descargar el binario de LocalAI (solo binario, no modelos)
RUN curl -L https://github.com/go-skynet/LocalAI/releases/latest/download/local-ai-linux-amd64 \
    -o /usr/local/bin/local-ai && chmod +x /usr/local/bin/local-ai

# Variables necesarias
ENV MODELS_PATH=/models
ENV THREADS=4
ENV CONTEXT_SIZE=2048

# Agregamos configuración del modelo
COPY mistral.yaml /models/

# Ejecutar
CMD ["/usr/local/bin/local-ai"]
