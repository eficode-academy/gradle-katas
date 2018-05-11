# Gradle plugins

## Finding useful plugins

We're looking for a plugin that can help us with building a C project.
Look through Gradle plugin repositories for a plugin that can solve our problem:

- [docs.gradle.org](https://docs.gradle.org/current/userguide/standard_plugins.html)
- [plugins.gradle.org](https://plugins.gradle.org/)
- [ksoichiro/awesome-gradle](https://github.com/ksoichiro/awesome-gradle)

- Locate the C plugin

## Applying plugins

- Run `gradle tasks`
- Apply the plugin to your `build.gradle` build script
- Run `gradle tasks`
- Assert new tasks appear in your task list
- Q: How did you apply your plugin? Are there other ways of doing so?

## Configuring plugins    

Configure the C plugin to build our executable using the [documentation](https://guides.gradle.org/building-c-executables/#layout).

The structure is as follows:

    src
    └── main
        └── c
            ├── author.h
            └── main.c

- Run `gradle build`
- Assert the executable was built and placed in `build/exe/main`
- Run the `main` application
- Assert you are greeted by the application
