# Artifactory Build Promotion demo

Demo showcasing automated build promotion using Gradle.

## How it works

- Dependencies are declared in the `promotable` configuration
- Gradle polls Artifactory for the latest builds that produced the `promotable` dependencies
  - If they are already promoted, stop there
- Builds/tests are run using the `promotable` dependencies
  - If they fail, stop there
- Gradle calls the Artifactory API to promote the relevant builds
