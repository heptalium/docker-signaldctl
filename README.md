# docker-syslog

Used to build Docker image `ghcr.io/heptalium/signaldctl`

## Prerequisites

- [signald](https://signald.org/) container is running:
`docker run -d -v signald_socket:/signald docker.io/signald/signald`

## Usage

`docker run -it -v signald_socket:/signald ghcr.io/heptalium/signaldctl`
