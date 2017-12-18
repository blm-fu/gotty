FROM golang:1.9.2-alpine3.7

EXPOSE 8080

RUN apk add htop git && \
  go get github.com/yudai/gotty

ENTRYPOINT ["gotty"]
CMD ["--permit-write", "--reconnect", "htop"]
