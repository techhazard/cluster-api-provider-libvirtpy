ARG DOCKER_HUB=docker.io
FROM ${DOCKER_HUB}/library/python:3.12-alpine3.20

RUN apk add --no-cache py3-libvirt
WORKDIR /controller
COPY libvirtpy/ ./libvirtpy/
RUN ls -lah /controller/*
RUN python3 /controller/libvirtpy/__init__.py
