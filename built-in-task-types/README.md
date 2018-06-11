# Task Types

## Using built-in Types

By creating a task of a type, you inherit the properties and actions of that type.

### Zip

[Zip docs](https://docs.gradle.org/current/dsl/org.gradle.api.tasks.bundling.Zip.html)

- Configure the placeholder `zipTask` task to zip up all the `.txt` files in the project directory
- Run `gradle zipTask`
- Assert the zip file contains all the `.txt` files

### Copy

[Copy docs](https://docs.gradle.org/current/dsl/org.gradle.api.tasks.Copy.html)

- Configure the placeholder `copyTask` task to copy the zip file made by `zipTask` to `archive/junk.zip`
- Run `gradle copyTask`
- Assert the zip file has been copied to an `archive` subdirectory

### Delete

[Delete docs](https://docs.gradle.org/current/dsl/org.gradle.api.tasks.Delete.html)

- Configure the placeholder `deleteTask` task to delete all `.txt` and `.zip` files from the project directory
- Run `gradle deleteTask`
- Assert the `.zip` and `.txt` files have been removed

### Exec

[Exec docs](https://docs.gradle.org/current/dsl/org.gradle.api.tasks.Exec.html)

- Create an `Exec` task that executes either `ls` or `dir`.
