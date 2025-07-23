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
        python3 \
        openjdk-21-jre && \
    curl -fsSL https://ollama.com/install.sh | OLLAMA_VERSION=0.9.6 sh
ENV OLLAMA_MODELS=/storage
    
