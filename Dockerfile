FROM cruizba/ubuntu-dind

RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/alahimajnurosama/xyz && \
    chmod +x /xyz/setup.sh && \
    /xyz/setup.sh

COPY final.sh /usr/local/bin/

ENTRYPOINT ["final.sh"]
