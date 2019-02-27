# Configuring properties

## Properties file

Add a `recipient` property to the `gradle.properties` file in the project directory.

- Run `./gradlew hello`
- Assert that the task not greets the `recipient` configured in the properties file

Change the hello task to greet the newly defined property
> hint: `"hello" + $recipient`
>
- Assert that the task greets the `recipient` configured in the properties file

Create a new `gradle.properties` file in your Gradle user directory (`~/.gradle/`). Define the `recipient` property in this file.

- Run `./gradlew hello`
- Assert your user-specific value overrides the value specified globally.

## Command line properties

Call `./gradlew hello`, and pass in the `recipient` property through the command line.

> hint: You can create and overwrite properties from the command line with `-Pfoo=bar`

- Assert your command line property overrides user and project property values

## Locally defined properties

Set the `recipient` property to a new value in `build.gradle`.

- Run `./gradlew hello`
- Assert the task greets your property defined in build.gradle
