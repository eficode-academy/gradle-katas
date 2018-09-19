# Configuring properties

## Locally defined properties

Add a new `recipient` property with your name as the value in the `build.gradle`.

Modify the `hello` task to greet the newly defined property

- Run `./gradlew hello`
- Assert the task now greets your configured property

## Property files

Move your `recipient` property to the `./gradlew.properties` file in the project directory.
Note that the syntax here differs from that of the `build.gradle` script.

- Run `./gradlew hello`
- Assert the task now greets the `recipient` configured in the properties file

Create a new `./gradlew.properties` file in your Gradle user directory (`~/.gradle/`).
Set a different value for `recipient` in your user `./gradlew.properties`.

- Run `./gradlew hello`
- Assert your user-specific value overrides the project property value

## Command line properties

Call `./gradlew hello`, and pass in the `recipient` property through the command line.

> hint: You can create and overwrite properties from the command line with `-Pfoo=bar`

- Assert your command line property overrides user and project property values
