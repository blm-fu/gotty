FROM golang:1.9.2-alpine3.7

RUN go get github.com/yudai/gotty

ENTRYPOINT [ "gotty" ]
