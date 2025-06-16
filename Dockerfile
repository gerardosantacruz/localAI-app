FROM localai/localai:latest-aio-cpu

ENV MODELS_PATH=/models
ENV MODELS=none

COPY models/ /models/

CMD ["local-ai", "--models-path", "/models"]
