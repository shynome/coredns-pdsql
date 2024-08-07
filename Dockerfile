FROM alpine:latest
WORKDIR /app
EXPOSE 8053

COPY Corefile /app/Corefile
COPY coredns-pdsql /app/coredns-pdsql
ENTRYPOINT [ "/app/coredns-pdsql" ]
CMD []
