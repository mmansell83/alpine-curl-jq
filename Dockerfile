FROM alpine:3.22.1@sha256:4bcff63911fcb4448bd4fdacec207030997caf25e9bea4045fa6c8c44de311d1

# kubectl exists in edge but not 3.18

RUN apk update && apk upgrade && \
    apk add jq curl yq helm git crane kustomize kubectl && \
    apk cache clean
