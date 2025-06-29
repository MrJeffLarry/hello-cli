package main

import (
	"fmt"
	"os"
)

var version = "0.0.0-dev"
var commit = ""
var date = ""

func main() {
	fmt.Printf("Hello, World!\n")
	fmt.Printf("Version: %s\n", version)
	if commit != "" {
		fmt.Printf("Commit: %s\n", commit)
	}
	if date != "" {
		fmt.Printf("Date: %s\n", date)
	}

	if len(os.Args) > 1 {
		fmt.Printf("Arguments: %v\n", os.Args[1:])
	}
	os.Exit(0)
}
