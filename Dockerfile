FROM alpine:latest
LABEL "author"="isaeldiaz@hotmail.com"


COPY ./src /tmp/build

RUN apk --update add build-base bison flex
RUN cd /tmp/build && \
    make all      && \
    make install  && \
    rm -Rf /tmp/build


ENTRYPOINT ["verimap"]
CMD ["--help"]


