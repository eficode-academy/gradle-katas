# Gradle Kata: Task creation

## Setup

Run `source setup.sh`

## Task

### Creating your first Gradle task

- You are in a newly created Gradle project. Examine the available tasks using `./gradlew tasks`
- Create your first task by copying the following code to `build.gradle`
    ```
    task hello {
        println "Hello, friend!"
    }
    ```
- Run `./gradlew`
- Q: Did Gradle print `Hello, friend!`? What happened? Inspect the full output from the command
- Run `./gradlew hello`
- Q: Was the output as expected?

### Task properties

- Run `./gradlew tasks`
- Q: Is the "hello" task listed?
- Run `./gradlew tasks --all`
- Q: Is the "hello" task listed now? In which group?
- Add a Group and a Description to the task:
    ```
    task hello {
        group "Greeting"
        description "prints a warm greeting"
        
        println "Hello, friend!"
    }
    ```
- Run `./gradlew tasks`
- Q: Is your tasks visible? In the correct group? And with the correct description?


## Useful commands
- `./gradlew tasks`
- `./gradlew tasks --all`
