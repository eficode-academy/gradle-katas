# Configuring properties

Modify the `hello` task to greet the newly defined property.

## Property files

Create a new `./gradlew.properties` file in your Gradle user directory (`~/.gradle/`).

- Run `./gradlew hello`
- Assert the task now greets the `recipient` configured in the properties file

Add a `recipient` property to the `./gradlew.properties` file in the project directory.
Set a different value for `recipient` in your user `./gradlew.properties`.

- Run `./gradlew hello`
- Assert your user-specific value overrides the value specified globally.

## Command line properties

Call `./gradlew hello`, and pass in the `recipient` property through the command line.

> hint: You can create and overwrite properties from the command line with `-Pfoo=bar`

- Assert your command line property overrides user and project property values

## Locally defined properties

Set the `recipient` property to a new value in `build.gradle`.

- Run `./gradlew hello`
- Assert the task now greets your configured property