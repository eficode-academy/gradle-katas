# Task execution order

## Configuring execution order

This exercise's `build.gradle` script contains `hello` and `goodbye` tasks.

Configure the tasks so `goodbye` runs _after_ the `hello` task.
This is only in case both are explicitly called, avoid creating task execution dependencies.

- Run `./gradlew goodbye hello`
- Assert that they ran in the correct order (`hello` -> `goodbye`)
- Run `./gradlew goodbye`
- Assert that `hello` did _not_ run
