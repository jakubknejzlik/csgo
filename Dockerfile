FROM ubuntu:16.04

ENV LAST_UPDATED_AT 2017-09-22

RUN apt-get update \
# install dependencies
    && apt-get install -y lib32gcc1 curl \
# delete apt cache to save space
    && rm -rf /var/lib/apt/lists/*

COPY containerfs /

VOLUME ["/csgo"]

WORKDIR /csgo

CMD ["./start.sh"]