FROM public.ecr.aws/ubuntu/ubuntu:24.04

RUN apt update && \
    apt install -y \
        golang \
        unzip \
        wget \
        curl \
        git \
        cmake \
        python3-pip \
        python3-venv \
        python3-pyaudio \
        portaudio19-dev \
        python3 \
        libc6-dev \
        openjdk-21-jre && \
    curl -fsSL https://ollama.com/install.sh | OLLAMA_VERSION=0.11.5 sh && \
    pip install --force-reinstall --upgrade pip --ignore-installed --break-system-packages
ENV OLLAMA_MODELS=/storage
    
