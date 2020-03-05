FROM golang:1.14.0 as development

COPY *.go /go/src/hello_docker/

RUN go build -o /hello_world hello_docker

FROM alpine:3.11
COPY --from=development /hello_world /
CMD ["/hello_world"]