# Resolving artifacts

In this exercise, we'll be pulling in the dependency we published in `publishing-artifacts`.

In the `build.gradle` script, the local Maven repository has been configured, as well as a `compile` configuration to define dependencies in.

- Define your recently published artifact as a dependency
- Run the command `gradle dependencies`
- Assert you see your dependency referenced

Up next we'll unpack our artifact and interact with its contents.

- Create a task that unzips your dependency into the `src` directory
- Assert the `author.h` file is in the same directory as the `main.c` file that uses it

_Hint_: Make use of a `Copy` task using `zipTree` for easy unzipping.

Up next we'll be setting up to use our header file.

- Apply the C plugin and add the default building block:

    model {
        components {
            main(NativeExecutableSpec)
        }
    }

- Run `gradle tasks`
- Assert new build tasks are available
- Run `gradle build`
- Q: Did it compile successfully?

_Hint_: Look at `build/tmp/compileMainExecutableMainC/output.txt`

Looks like we forgot to actually unpack our dependency.

- Configure task dependencies correctly so our build depends on our `unpack` task
- Run `gradle build`
- Assert everything ran well
- Run `./build/exe/main/main`
- Assert the program ran correctly
