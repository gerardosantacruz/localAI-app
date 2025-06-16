FROM quay.io/go-skynet/local-ai:main-cpu-only

# Establecer la ruta donde irán los modelos
ENV MODELS_PATH=/models

# Copiar tu configuración de modelo (sin descargar el modelo real)
COPY models/ /models/

# Comando de arranque
CMD ["/usr/bin/local-ai"]
