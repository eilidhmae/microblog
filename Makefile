build:
	go fmt
	go fix
	go vet
	go build -o mb

clean:
	rm -f mb mb.linux
	rm -f *.html

render:
	go get github.com/gomarkdown/mdtohtml
	go install github.com/gomarkdown/mdtohtml
	./renderhtml.sh

all: clean render build

docker: clean render
	docker build -t microblog:latest .

run:
	docker run --rm -p 127.0.0.1:3000:3000 microblog:latest
