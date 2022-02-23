# see https://hub.docker.com/r/hashicorp/packer/tags for all available tags
FROM hashicorp/packer:light@sha256:f795aace438ef92e738228c21d5ceb7d5dd73ceb7e0b1efab5b0e90cbc4d4dcd
# append ansible
RUN apk add python3 ansible
# RUN apk update && apk add --no-cache musl-dev libffi-dev openssl-dev make gcc py3-pip && pip install cffi && pip install ansible
# RUN pip install ansible

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
