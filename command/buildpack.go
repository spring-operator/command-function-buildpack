/*
 * Copyright 2019 The original author or authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

package command

import (
	"github.com/buildpack/libbuildpack/buildplan"
	"github.com/cloudfoundry/libcfbuildpack/build"
	"github.com/cloudfoundry/libcfbuildpack/detect"
	"github.com/projectriff/riff-buildpack/invoker"
	"github.com/projectriff/riff-buildpack/metadata"
)

type CommandBuildpack struct {
	name string
}

func (b *CommandBuildpack) Name() string {
	return b.name
}

func (b *CommandBuildpack) Detect(detect detect.Detect, metadata metadata.Metadata) (bool, error) {
	// Try command
	return DetectCommand(detect, metadata)
}

func (b *CommandBuildpack) BuildPlan(detect detect.Detect, metadata metadata.Metadata) buildplan.BuildPlan {
	return BuildPlanContribution(detect, metadata)
}

func (b *CommandBuildpack) Invoker(build build.Build) (invoker.Invoker, bool, error) {
	return NewCommandInvoker(build)
}

func NewBuildpack() invoker.Buildpack {
	return &CommandBuildpack{
		name: "command",
	}
}
