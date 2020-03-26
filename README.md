# Gradle-katas

![alt-text](https://jaxenter.com/wp-content/uploads/2016/06/Screen-Shot-2016-06-06-at-2.56.13-PM.png "Gradle logo")

## Quick start

### In the Cloud

[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.svg)](https://console.cloud.google.com/cloudshell/editor?cloudshell_git_repo=https://github.com/praqma-training/gradle-katas.git)

### On Your Local Machine

You need to have Java and Gradle installed to run these katas. Follow the intallation guides for each product:

- **Java**: [adoptopenjdk.net](https://adoptopenjdk.net/)
- **Gradle**: [gradle.org](https://gradle.org/install/)

You can check your installation with the following command:
```
$ gradle -version

------------------------------------------------------------
Gradle 6.1
------------------------------------------------------------
...
```

To work through the katas, you need to clone this repository locally.
For each exercise, you will then

- Go into the folder with the exrecise you want to work on
- Run the `setup.sh` script
- Consult the README.md in that folder to get a description of the exercise

These katas are designed to run under Bash, so they should be straight forward to run on MacOS or most commont Linux distributions.
For windows users, we recommend using [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/install-win10).

## Purpose of Gradle Katas

This repository is a collection of Gradle exercises.
The concept is stolen without shame from [Schauderhaft.de](http://blog.schauderhaft.de/gitkata/).

The exercises are designed for use when we are teaching Gradle courses. You should be able to use them as self-contained exercises that will allow you to keep your Gradle skills sharp.

Feel free to use these exercises, that's why they're public!

## Suggested Learning Path

Setup
 - [gradle-wrapper-basics](./gradle-wrapper-basics/README.md) - Use the gradle wrapper to ensure that the correct gradle version is used.

Task creation
 - [task-creation](./task-creation/README.md) - Add a simple task and execute it
 - [build-phases](./build-phases/README.md) - Creating dependent tasks and ordered execution

Properties
 - [configuring-properties](./configuring-properties/README.md) - Different ways of passing properties to the build
 - [checking-properties](./checking-properties/README.md) - Verifying and using passed properties

Task Flow
 - [task-execution-order](./task-execution-order/README.md) - Instructing your tasks to run in certain order
 - [task-dependencies](./task-dependencies/README.md) - Creating a DAG (directed acyclic graph) out of your tasks


Skipping task
 - [incremental-tasks](./incremental-tasks/README.md) - Defining build-input and output
 - [skipping-execution](./skipping-execution/README.md) - Conditional execution of tasks


Task types
 - [built-in-task-types](./built-in-task-types/README.md) - Experiment with a variety of built-in types
 - [custom-task-types](./custom-task-types/README.md) - Defining custom re-usable types.


Plugin
 - [applying-plugins](./applying-plugins/README.md) - Looking into available plugins


Task rules and dynamic tasks
 - [task-rules](./task-rules/README.md) - Dynamic task content
 - [dynamic-task-creation](./dynamic-task-creation/README.md)


Artifact handling
 - [publish-artifact](./publish-artifact/README.md) - How to share your artifact. Group, name and version practices.
 - [resolve-artifact](./resolve-artifact/README.md) - Compile code using the artifact as a dependency

Extras
 - [promoting-artifacts-example](./promoting-artifacts-example/README.md)
