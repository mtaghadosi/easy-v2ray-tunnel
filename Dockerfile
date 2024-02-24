FROM python:3.8-slim-buster

USER root

RUN apt update \
    && apt install -y \
        sshpass \
    && apt clean autoclean \
    && apt autoremove -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /easy-v2ray
COPY . /easy-v2ray/

# Debugging commands
RUN ls -l
RUN chmod +x install.sh
RUN ls -l install.sh
RUN ./install.sh
