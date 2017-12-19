FROM paasmule/golang-git

EXPOSE 8080

RUN ago get github.com/yudai/gotty

ENTRYPOINT ["gotty"]
CMD ["--permit-write", "--reconnect", "bash"]
