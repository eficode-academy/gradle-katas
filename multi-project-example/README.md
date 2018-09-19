# Root

This Gradle project contains two subprojects: `server-one` and `server-two`.

## Tasks

### info

The `root` project configures the `info` task for all projects.
This is only to show off the use of the `allprojects` closure.

### build

The subprojects each have a `build` task.
This is only to show off the root project's `subprojects` and the `afterEvaluate` closure.

In case you set the `target` property to `RELEASE` (by calling Gradle with `-Ptarget=RELEASE`), the `root` project will append behaviour to the subproject's `build` tasks.

### startServer

The subprojects each have a `startServer` task. This starts a server on a specific port.
This task is of a `StartServer` task type, which the `root` project exposes, and which the subprojects create and configure.
