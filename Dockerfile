FROM debian:buster-slim

LABEL maintainer="Gabriel Bernardo <gabrielbernardomc@gmail.com>"

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       software-properties-common \
       systemd-* \
       htop 

RUN rm -f /lib/systemd/system/systemd*udev* \
  && rm -f /lib/systemd/system/getty.target

CMD ["/lib/systemd/systemd"]
