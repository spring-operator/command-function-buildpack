module github.com/projectriff/command-function-buildpack

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/buildpack/libbuildpack v1.10.0
	github.com/cloudfoundry/jvm-application-buildpack v1.0.0-M4
	github.com/cloudfoundry/libcfbuildpack v1.39.0
	github.com/cloudfoundry/libjavabuildpack v1.10.0 // indirect
	github.com/cloudfoundry/nodejs-cnb v0.0.2
	github.com/cloudfoundry/npm-cnb v0.0.3
	github.com/cloudfoundry/openjdk-buildpack v1.0.0-M4
	github.com/onsi/gomega v1.4.3
	github.com/projectriff/node-function-buildpack v0.0.0-20190214003139-bd799ea0ebdc // indirect
	github.com/projectriff/riff-buildpack v0.1.1-0.20190207162816-5a5a4a635c5e
	github.com/sclevine/spec v1.2.0
)

replace github.com/projectriff/riff-buildpack => github.com/scothis/riff-buildpack v0.1.1-0.20190214002255-a465c569683a
