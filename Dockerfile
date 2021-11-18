FROM alpine

ARG TAG

RUN apk add --no-cache exim=$TAG

EXPOSE 25

ENTRYPOINT ["exim"]
CMD ["-bdf", "-v", "-q30m"]
