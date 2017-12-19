FROM golang:1.9.2-alpine3.7

EXPOSE 8080

RUN apk add git bash openssh && \
  go get github.com/yudai/gotty && \
  go get -u -v github.com/holys/redis-cli

ENTRYPOINT ["gotty"]
CMD ["--permit-write", "--reconnect", "--credential", "blm:blm123", "--max-connection", 10, "--timeout", 600, "bash"]
