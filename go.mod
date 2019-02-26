module github.com/projectriff/command-function-buildpack

require (
	github.com/buildpack/libbuildpack v1.10.0
	github.com/cloudfoundry/libcfbuildpack v1.39.0
	github.com/projectriff/riff-buildpack v0.1.1-0.20190207162816-5a5a4a635c5e
)

replace github.com/projectriff/riff-buildpack => github.com/scothis/riff-buildpack v0.1.1-0.20190226211521-e6055735323e
