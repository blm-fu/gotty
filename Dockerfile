FROM paasmule/golang-git

EXPOSE 8080

RUN go get github.com/yudai/gotty

ENTRYPOINT ["gotty"]
CMD ["--permit-write", "--reconnect", "bash"]
