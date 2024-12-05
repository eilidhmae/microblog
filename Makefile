build:
	go fmt
	go fix
	go vet
	go build -o mb

clean:
	rm -f mb
	rm -f *.html

render:
	go install github.com/gomarkdown/mdtohtml
	./renderhtml.sh

all: clean render build
