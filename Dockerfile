FROM debian:buster-slim

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update \
  && apt-get install -y \
      systemd* \
      dbus* 

RUN apt-get update \
    && apt-get install --no-install-recommends -y \
        bash-completion \
        htop \
        vim 

ENTRYPOINT ["/sbin/init"]
