# Incremental tasks

In the `build.gradle` script, you will find two tasks:

- `generateFoos`, which generates a configurable amount of files
- `transformFoos`, which creates new files based on the files from `generateFoos`

- Run `./gradlew transformFoos -i` twice
- Q: Which tasks were executed in the second run, and why?

Configure inputs and outputs for both tasks, so neither runs when they don't have to.

- Run `./gradlew transformFoos -i` twice
- Q: Which tasks were executed in the second run, and why?
- Modify the `fooCount` property
- Run `./gradlew transformFoos -i`
- Q: Which tasks were executed, and why?
- Delete some of the files in `foo/transformed`
- Run `./gradlew transformFoos -i`
- Q: Which tasks were executed, and why?
- Create a new file, `foo/transformed/some-other-output.txt`
- Run `./gradlew transformFoos -i`
- Q: Which tasks were executed, and why?
