## Resolve artifact

### Define your dependency
- In build.gradle, define your dependency based on the last exercise
- Run the command `gradle dependencies`
- Q: can you see your dependency referenced?

### Unpack file(s) from dependency
You need the files from your dependency available in your source folder.

- create a task that unzip the dependency files into the src folder
    - _Hint: use ZipTree_
- Q: main.c is looking for the author.h in the same folder as itself, did you get it right?

### Apply plugin and configure a model block
- Apply the c plugin and add the default building block
```
model {
    components {
        main(NativeExecutableSpec)
    }
}
```
-
- Run the command `gradle tasks`
- Q: Can you see new build tasks available?

### Compile the .c file
- Run the command `gradle build`
- Q: Did it compile successfully?
    - _Hint: cat build/tmp/compileMainExecutableMainC/output.txt for information_

### Add task dependency
Make the compile task dependent on the unpack task, ensuring your dependency is available
- Run the command `gradle build`
- Run the command `./build/exe/main/main`
- Q: Was the output as expected?
