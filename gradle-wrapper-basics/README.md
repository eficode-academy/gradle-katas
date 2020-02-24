# Gradle Kata: Gradle Wrapper

While you can use Gradle directly to run your build, the setup process is toilsome and having all your developers use the same version is a pain. The Gradle Wrapper script deals with these problems for you, and is the recommended way to use Gradle.

## Setup

Run `. setup.sh`

Then enter the `exercises` directory.

## The task
The `exercises` directory is the root of your new project, where you want to use Gradle to build it.

1. Run `gradlew wrapper`
1. Examine the generated files. The following files and folders have been created:
   * .gradle/
   * gradle/
   * gradlew
   * gradlew.bat
1. Run `gradlew --version` and verify that the version is the same as when running  `gradle --version`
1. Run `./gradlew wrapper --gradle-version 5.6.4` to update the version used by the gradle wrapper
1. Run `gradlew --version` again
1. Run `gradle --version` again

## Useful commands
* `gradle wrapper`
* `gradle wrapper --gradle-version x.y.z`
* `gradle --version` and `gradlew --version`