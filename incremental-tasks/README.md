# Incremental tasks

In the `build.gradle` script, you will find two tasks:

- `generateFoo`, which generates a configurable amount of files
- `transformFoo`, which creates new files based on the files from `generateFoo`

- Run `./gradlew transformFoo -i` twice
- Q: Which tasks were executed in the second run, and why?

Configure inputs and outputs for both tasks, so neither runs when they don't have to.

- Run `./gradlew transformFoo -i` twice
- Q: Which tasks were executed in the second run, and why?
- Modify the `fooCount` property
- Run `./gradlew transformFoo -i`
- Q: Which tasks were executed, and why?
- Delete some of the files in `foo/transform`
- Run `./gradlew transformFoo -i`
- Q: Which tasks were executed, and why?
- Create a new file, `foo/transform/some-other-output.txt`
- Run `./gradlew transformFoo -i`
- Q: Which tasks were executed, and why?
