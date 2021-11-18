FROM alpine

ARG TAG

RUN if [ -z ${TAG} ]; then apk add --no-cache samba; else apk add --no-cache samba=$TAG; fi

EXPOSE 25

ENTRYPOINT ["exim"]
CMD ["-bdf", "-v", "-q30m"]
