FROM quay.io/go-skynet/local-ai:latest

# Limpiar modelos innecesarios que vienen por defecto
RUN rm -rf /models/* && rm -rf /app/models/* && rm -rf /root/.cache/*

# Configuración básica
ENV MODELS_PATH=/models
ENV THREADS=4
ENV CONTEXT_SIZE=2048
ENV N_GPU_LAYERS=0
ENV DEBUG=false

# Copiamos solo el modelo YAML que queremos
COPY mistral.yaml /models/
