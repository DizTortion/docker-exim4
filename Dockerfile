FROM debian

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install --assume-yes \
    exim4 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

EXPOSE 25

ENTRYPOINT ["exim"]
CMD ["-bdf", "-v", "-q30m"]
