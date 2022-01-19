FROM debian:latest
LABEL MAINTAINER="https://github.com/cood-filtr-rubika/fising"

WORKDIR /maxtor/
ADD . /maxtor

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./maxtor.sh"]
