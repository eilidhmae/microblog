package main

import (
	"embed"
	"log"
	"net/http"
)

//go:embed *.html css/*
var content embed.FS

func main() {
	mux := http.NewServeMux()

	mux.Handle("/", http.FileServer(http.FS(content)))
	err := http.ListenAndServe(":3000", mux)
	if err != nil {
		log.Fatal(err)
	}
}
