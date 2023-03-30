FROM cruizba/ubuntu-dind

RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/alahimajnurosama/xyz && \
    chmod +x /xyz/setup.sh && \
    /xyz/setup.sh

# Set the container hostname
RUN echo '127.0.0.1 Urban-Vps' >> /etc/hosts


