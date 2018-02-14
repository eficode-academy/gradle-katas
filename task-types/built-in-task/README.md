# Task Types

## Using built-in Types

By referring to a task type in the task definition, you inherit properties and actions of that type.

### Zip

- Configure the placeholder `zipTask` task to zip up all the `.txt` files in the project directory
- Run `gradle zipTask`
- Assert the zip file contains all the `.txt` files

### Copy

- Configure the placeholder `copyTask` task to copy the zip file made by `zipTask` to `archive/junk.zip`
- Run `gradle copyTask`
- Assert the zip file has been copied to an `archive` subdirectory

### Delete

- Configure the placeholder `deleteTask` task to delete all `.txt` and `.zip` files from the project directory
- Run `gradle deleteTask`
- Assert the `.zip` and `.txt` files have been removed

> hint: you can make a deletion based on extensions by makeing a `filetree`:     
delete fileTree('foo/bar') {
        include '*.baz'
        include '*.zz'
    }
