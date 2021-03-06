BINARY=runServer

all: test build
build:
	go build github.com/StStep/go-test-server/cmd/runServer
test:
	go test -v ./...
clean:
	go clean
	rm -f $(BINARY)
run:
	go build github.com/StStep/go-test-server/cmd/runServer
	./$(BINARY)
deps:
	dep ensure
