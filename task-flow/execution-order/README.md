# Execution order

This exercise's `build.gradle` script contains `hello` and `goodbye` tasks.

Configure the tasks so `goodbye` runs _after_ the `hello` task.
This is only in case both are explcitly called, avoid creating task execution dependencies.

- Run `gradle goodbye hello`
- Assert that they ran in the correct order (`hello` -> `goodbye`)
- Run `gradle goodbye`
- Assert that `hello` did _not_ run

_Recommended continuation: *task-flow/task-dependencies*_
