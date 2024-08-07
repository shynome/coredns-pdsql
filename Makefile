build:
	CGO_ENABLED=0 go build -ldflags="-X 'main.Version=$$(git describe --tags --always --dirty)' -s -w" -o coredns-pdsql ./coredns
docker: build
	docker build . -t shynome/coredns-pdsql:$$(git describe --tags --always --dirty)
push: docker
	docker push shynome/coredns-pdsql:$$(git describe --tags --always --dirty)
