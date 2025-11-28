package main

import (
	_ "embed"
	"fmt"
	"os"
	"text/template"
)

//go:embed templates/circleci-testsuite.rb
var tpl string

type variables struct {
	Version       string
	VersionRegexp string
	ArmSha256     string
	IntelSha256   string
}

func main() {
	vars := variables{
		Version:       os.Getenv("CIRCLECI_TESTSUITE_VERSION"),
		VersionRegexp: `/^\d+(?:\.\d+)+-[0-9a-fA-F]$/i`,
		ArmSha256:     os.Getenv("CIRCLECI_TESTSUITE_ARM_SHA"),
		IntelSha256:   os.Getenv("CIRCLECI_TESTSUITE_INTEL_SHA"),
	}

	if vars.Version == "" || vars.ArmSha256 == "" || vars.IntelSha256 == "" {
		fmt.Println("Pass all the env-vars")
		os.Exit(1)
	}

	w, err := os.OpenFile("Casks/circleci-testsuite.rb", os.O_RDWR|os.O_CREATE|os.O_TRUNC, 0644)
	if err != nil {
		panic(err)
	}
	defer func() { _ = w.Close() }()

	t := template.New("Cask")
	t, err = t.Parse(tpl)
	if err != nil {
		fmt.Printf("Error parsing template: %s", err)
		os.Exit(1)
	}

	if err := t.ExecuteTemplate(w, "Cask", vars); err != nil {
		fmt.Printf("Error executing template: %s", err)
		os.Exit(1)
	}
}
