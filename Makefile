.PHONY: all build test lint fmt

all: build test lint

build:
	go build ./...

test:
	go test ./... -v

lint:
	go vet ./...

fmt:
	go fmt ./...
