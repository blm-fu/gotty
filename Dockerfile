FROM paasmule/golang-git

EXPOSE 8080

RUN mkdir -p /tmp/gotty && \
  GOPATH=/tmp/gotty go get github.com/yudai/gotty && \
  mv /tmp/gotty/bin/gotty /usr/local/bin/ && \
  rm -rf /tmp/gotty

ENTRYPOINT ["/usr/local/bin/gotty"]
CMD ["--permit-write","--reconnect","/bin/sh"]
