FROM ubuntu:latest

VOLUME ["/data"]

RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends  \
       gosu \
      texlive-latex-extra   \
    &&  rm -rf /var/lib/apt/lists/*

ENV HOME /data
WORKDIR /data

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
