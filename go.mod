module github.com/projectriff/command-function-buildpack

require (
	github.com/buildpack/libbuildpack v1.10.0
	github.com/cloudfoundry/libcfbuildpack v1.39.0
	github.com/onsi/gomega v1.4.3
	github.com/projectriff/riff-buildpack v0.1.1-0.20190207162816-5a5a4a635c5e
	github.com/sclevine/spec v1.2.0
	golang.org/x/sys v0.0.0-20190130150945-aca44879d564 // indirect
)

replace github.com/projectriff/riff-buildpack => github.com/scothis/riff-buildpack v0.1.1-0.20190226211521-e6055735323e
