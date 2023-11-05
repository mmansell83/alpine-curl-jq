FROM alpine:3.18.4

RUN apk update && apk upgrade && \
    apk add jq curl yq  && \
    apk cache clean
