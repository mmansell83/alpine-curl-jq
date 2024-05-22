FROM alpine:3.20.0@sha256:216266c86fc4dcef5619930bd394245824c2af52fd21ba7c6fa0e618657d4c3b

# kubectl exists in edge but not 3.18

RUN apk update && apk upgrade && \
    apk add jq curl yq helm git crane kustomize kubectl && \
    apk cache clean
