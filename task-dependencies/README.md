# Task dependencies

## Configuring task dependencies

This exercise's `build.gradle` script contains `hello` and `goodbye` tasks.

- Run `./gradlew goodbye hello`
- Notice that "see you later!" appears before the "Hey there!" message.

Configure the tasks so `hello` runs _before_ the `goodbye` task, regardless of whether it was called or not.

- Run `./gradlew goodbye hello`
- Assert that they ran in the correct order (`hello` -> `goodbye`)
- Run `./gradlew goodbye`
- Assert that the `hello`-task is also run
