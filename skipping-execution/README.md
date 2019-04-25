# Interrupting tasks

This exercise's `build.gradle` contains a task called `dangerousTask`.
The project keeps track of a `riskLevel`, which increases when you run `dangerousTask`.
Our reactor will overload and explode if `riskLevel` grows higher than 100.

- Run `./gradlew dangerousTask` until you reach critical risk levels
- Run `./gradlew dangerousTask` once more (for science!)
- Q: Did your reactor overload? If so, what went wrong?
- Overwrite the value in the `risk.txt` file to `60`.

Modify `dangerousTask` to prevent it from executing if `riskLevel` could potentially increase past 100.
However, do so without modifying anything in the `doLast`-block.

- Run `./gradlew dangerousTask` and watch your `riskLevel` rise
- Q: Is your reactor still overloading?
- Q: What are the differences between `onlyIf`, `return`, `StopExecutionException`, `./gradlewException`? When would you use them?
