FROM alpine:latest

ARG ARCH="amd64"
ARG OS="linux"

WORKDIR root

COPY go-walletconnect-bridge-linux /usr/local/bin/wallet-bridge

EXPOSE 7000/tcp 7000/udp

ENTRYPOINT ["wallet-bridge"]