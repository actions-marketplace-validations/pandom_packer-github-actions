# see https://hub.docker.com/r/hashicorp/packer/tags for all available tags
FROM hashicorp/packer:light@sha256:653c69b45fd0767e5c0762b4edb73a4867d67a8354ad712b6af356033612137a
# append ansible
RUN apk add python3 ansible
# RUN apk update && apk add --no-cache musl-dev libffi-dev openssl-dev make gcc py3-pip && pip install cffi && pip install ansible
# RUN pip install ansible

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["/entrypoint.sh"]
