FROM golang:alpine
RUN apk add --no-cache gcc musl-dev
RUN go install -ldflags='-s -w' gitlab.com/signald/signald-go/cmd/signaldctl@latest

FROM alpine
COPY --from=0 /go/bin/signaldctl /usr/bin/signaldctl
COPY signaldctl.yaml /root/.config/signaldctl.yaml
VOLUME /signald
