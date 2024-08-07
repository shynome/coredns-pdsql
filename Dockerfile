FROM alpine:latest
WORKDIR /app
EXPOSE 8053

COPY coredns-pdsql /app/coredns-pdsql
ENTRYPOINT [ "/app/coredns-pdsql" ]
CMD []
COPY Corefile /app/Corefile

