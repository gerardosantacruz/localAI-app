FROM localai/localai:cpu-small

ENV MODELS_PATH=/models

COPY models/ /models/

CMD ["/usr/bin/local-ai"]
