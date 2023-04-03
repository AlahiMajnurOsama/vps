FROM cruizba/ubuntu-dind

RUN apt-get update && \
    apt-get install -y git && \
    git clone https://github.com/alahimajnurosama/xyz && \
    chmod +x /xyz/setup.sh && \
    /xyz/setup.sh

COPY final.sh /app/
RUN chmod +x /app/final.sh

ENTRYPOINT ["final.sh"]
