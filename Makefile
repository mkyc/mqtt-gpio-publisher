OUTPUT := ./out/

build:
	go vet ./...
	go fmt ./...
	go build -x -o $(OUTPUT)mgp github.com/mkyc/mqtt-gpio-publisher

clean:
	go clean
	rm -rf $(OUTPUT)
