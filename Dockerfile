FROM alpine:3.19.0

# kubectl exists in edge but not 3.18

RUN apk update && apk upgrade && \
    apk add jq curl yq helm git crane kustomize && \
    apk cache clean
