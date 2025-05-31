FROM alpine:3.22.0@sha256:8a1f59ffb675680d47db6337b49d22281a139e9d709335b492be023728e11715

# kubectl exists in edge but not 3.18

RUN apk update && apk upgrade && \
    apk add jq curl yq helm git crane kustomize kubectl && \
    apk cache clean
