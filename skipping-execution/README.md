# Interrupting tasks

This exercise's `build.gradle` contains a task called `dangerousTask`.
The project keeps track of a `riskLevel`, which increases when you run `dangerousTask`.
Our reactor will overload and explode if `riskLevel` grows higher than 100.

Modify `dangerousTask` to prevent it from executing if `riskLevel` could potentially increase past 100.
However, do so without modifying existing lines of code.

- Run `gradle dangerousTask` until you reach critical risk levels
- Run `gradle dangerousTask` once more, for science
- Q: Did your reactor overload? If so, what went wrong?
- Q: What are the differences between `onlyIf`, `return`, `StopExecutionException`, `GradleException`? When would you use them?
