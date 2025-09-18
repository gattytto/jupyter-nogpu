FROM quay.io/gattytto/jupyter-nogpu:latest

RUN apt update && \
    apt install -y \
        python3-pyaudio \
        portaudio19-dev \
        libc6-dev 
ENV OLLAMA_MODELS=/storage
