FROM alpine:3.16@sha256:1304f174557314a7ed9eddb4eab12fed12cb0cd9809e4c28f29af86979a3c870

ARG terraform_version="1.2.5"

# Install terraform
RUN apk update --no-cache \
    && apk add --no-cache \
        wget \
        unzip \
        curl \
    && wget https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip \
    && unzip ./terraform_${terraform_version}_linux_amd64.zip -d /usr/local/bin/ \
    && rm -rf ./terraform_${terraform_version}_linux_amd64.zip \
    && mkdir terraform