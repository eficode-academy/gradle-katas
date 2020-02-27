# Gradle Kata: Build phases

This kata explores the three stages of a gradle build:
- Initialization
- Configuration
- Execution

## Setup

Run `source setup.sh`

This will create a new gradle project in the `exercise` directory and add several tasks to `build.gradle`

## The task

- Examine the `build.gradle` script. It contains a property and two tasks:

    - `setTheValue` changes the value of `theValue`
    - `printTheValue` prints the value of `theValue`

- Predict the outcome of the following commands:

    - `./gradlew printTheValue`
    - `./gradlew setTheValue printTheValue`

- Run the commands and note the printed values.

- Q: Did the output match your expectations? If not, what tripped you up?

- Change `printTheValue` so that the `message` is defined inside the doLast block
    ```
    task 'printTheValue' {
        group 'Value'
        description 'Prints the value'

        doLast {
            def message = "The value currently is: ${theValue}"
            println message
        }
    }
    ```

- Run `./gradlew setTheValue printTheValue` again
- Why is the increased `theValue` printed this time, when it wasn't before?
