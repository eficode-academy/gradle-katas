# Task depencies

This exercise's `build.gradle` script contains `hello` and `goodbye` tasks.

Configure the tasks so `hello` runs before_ the `goodbye` task, regardless of whether it was called or not.

- Run `gradle goodbye hello`
- Assert that they ran in the correct order (`hello` -> `goodbye`)
- Run `gradle goodbye`
- Assert that `hello` runs

_Recommended continuation: *task-flow/task-dependencies*_
