package main

import (
	"log"
	"net/http"
)

// main starts a tiny static server on :3000 serving the current directory.
func main() {
	fs := http.FileServer(http.Dir("."))
	http.Handle("/", fs)

	log.Println("serving on http://localhost:3000")
	if err := http.ListenAndServe(":3000", nil); err != nil {
		log.Fatal(err)
	}
}
