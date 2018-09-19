# Task dependencies

## Configuring task dependencies

This exercise's `build.gradle` script contains `hello` and `goodbye` tasks.

Configure the tasks so `hello` runs _before_ the `goodbye` task, regardless of whether it was called or not.

- Run `./gradlew goodbye hello`
- Assert that they ran in the correct order (`hello` -> `goodbye`)
- Run `./gradlew goodbye`
- Assert that also `hello` runs
