# Project properties

## Locally defined properties

<<<<<<< 591f831ee1d72d4b0ce6a029f068a4891eeb9447:project-properties/configuring-properties/README.md
Add a `recipient` property in the `build.gradle`.
=======
Add a new `recipient` property variable with your name as the value in the `build.gradle`.
>>>>>>> made small hints to the kata:task-properties/configuring-properties/README.md

Modify the `hello` task to greet the newly defined property

- Run `gradle hello`
- Assert the task now greets your configured `recipient`

## Property files

Move your `recipient` property to the `gradle.properties` file in the project directory.
Note that the syntax here differs with that of the `build.gradle` script.

- Run `gradle hello`
- Assert the task now greets the `recipient` configured in the properties file

Create a new `gradle.properties` file in your Gradle user directory (`~/.gradle/`).
Set a different value for `recipient` in your user `gradle.properties`.

- Run `gradle hello`
- Assert your user-specific value overrides the project property value

## Command line properties

Call `gradle hello`, and pass in the `recipient` property through the command line.

> hint: if you can't remember, you send in properties with the `-P` command

 - Assert your command line property overrides user and project property values

<br>
<br>

_Recommended continuation: *task-properties/checking-properties*_
