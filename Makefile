docker: clean render
	docker build -t microblog:latest .

build:
	go fmt
	go fix
	go vet
	go build -o mb

clean:
	rm -f mb mb.linux
	rm -f *.html

render:
	go mod download
	go mod verify
	./renderhtml.sh

run:
	docker run --rm -p 127.0.0.1:3000:3000 microblog:latest

all: docker run
