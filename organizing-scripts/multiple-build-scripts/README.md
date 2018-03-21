# Multiple build scripts

By default, Gradle will use the script named `build.gradle` to run builds.
This exercise doesn't have a `build.gradle` script.
Instead, it has two build scripts: `foo.gradle` and `bar.gradle`.
Complete the following exercises without renaming either file.

## Builds with specific scripts

 - Use the `foo.gradle` script to run the `sayFoo` task.
 - Assert the task printed `foo`

## Combining build scripts

Modify the `foo.gradle` script to apply the `bar.gradle` script to its builds.

 - Use the `foo.gradle` script to run the `sayFoo` and `sayBar` tasks.
 - Assert the build printed `foo` and `bar`

<br>
<br>

_Recommended continuation: *TODO*_
