FROM localai/localai:cpu

# Evita que descargue modelos automáticamente
ENV MODELS=none

# Carpeta para tus modelos
VOLUME ["/models"]
WORKDIR /app

CMD ["local-ai", "--models-path", "/models"]
