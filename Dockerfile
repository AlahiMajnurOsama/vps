FROM cruizba/ubuntu-dind

RUN apt-get update && \
    apt-get install -y git wget && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/alahimajnurosama/xyz && \
    cd xyz && \
    chmod +x install.sh ngrok.sh easy.sh && \
    ./install.sh && \
    ./ngrok.sh && \
    ./easy.sh
