# Docker with systemd
Debian-based Dockerfile with systemd

# Use cases
 - To run applications that depends on systemd
 - ⚠️**HIGHLY UNRECOMMENDED** to run on production environments due to the kernel access that is given for it to work
 - Prefer to use on development/test environments

# Instructions

- This projects provides the dockerfile itself and a docker-compose.yml file to facilitate the use
- Building the dockerfile:
    ```
    docker build -t name_your_image_tag -f Dockerfile .
    ```
- Running with `docker run`:
    ```
    docker run --privileged -d name_your_image_tag
    ```
- Running with `docker-compose`:
    ```
    docker-compose up -d
    ```
- If you don't want to build the image yourself, you can find it on [my docker hub repository](https://hub.docker.com/repository/docker/gabrielbernardomc/debian-systemd/general)