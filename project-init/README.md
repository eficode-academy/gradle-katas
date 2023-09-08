# Gradle Kata: Project initialization

This kata will describe how to create a new gradle project.

## Setup

Run `source setup.sh`

## The task

1. Run the command `gradle init`. When prompted, choose
   * Project type: basic
   * DSL: Groovy
   * Project name: exercise
1. Explore the generated files
1. Run the command `gradle projects`
1. Observe the name of your root project
1. Rename your root project by changing `rootProject.name` in `settings.gradle`
1. Run the command `gradle projects` again
1. Observe the updated name of your root project
