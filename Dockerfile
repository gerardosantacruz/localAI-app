FROM quay.io/go-skynet/local-ai:latest

# Directorio de modelos montado por volumen
ENV MODELS_PATH=/models

# Activamos soporte para funciones (Tools)
ENV ENABLE_FUNCTIONS_TOOL=true

# Puerto de escucha (cambia si necesitás otro)
EXPOSE 8080

# Comando de arranque
CMD ["/usr/bin/local-ai"]
