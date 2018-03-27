# Creating artifacts

Use the provided `build.gradle` to add the necessary functionality

## Output folder and files

In the `buildHeader` task, define `output/author.h` as an output file.

_Hint:_ Use the `outputs` property to set `outputs.file` during configuration.

## Writing to file

As part of the `buildHeader` task, create the `output/author.h` file. This will be a header file that defines `AUTHOR`.

_Hint_: Use the C header syntax: `#define AUTHOR value`.

_Hint_: Use `System.getProperty('user.name')` to get the current user name.

- Run the command `gradle buildHeader`
- Q: Did it successfully create your header file in the `output` directory?
- Assert its syntax is correct: read `#define AUTHOR yourName` ?
- Rerun the command `gradle buildHeader -i`
- Assert the task was `UP-TO-DATE`
