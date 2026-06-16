FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

# kubectl exists in edge but not 3.18

RUN apk update && apk upgrade && \
    apk add jq curl yq helm git crane kustomize kubectl && \
    apk cache clean
