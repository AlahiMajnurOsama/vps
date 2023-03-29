FROM cruizba/ubuntu-dind

RUN apt-get install -y git

RUN git clone https://github.com/alahimajnurosama/xyz && \
    cd xyz && \
    chmod +x setup.sh
    bash setup.sh
