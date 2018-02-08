## Resolve artifact

### Define your dependency
**In the build.gradle, define your dependency based on the last exercise**
- Q: When typing the command 'gradle dependencies', can you see your artifact referenced

### Unpack file(s) from dependency
**Create a task that unzip the dependency files into the src folder**
- __Hint: use ZipTree__
- Q: main.c is looking for the author.h in the same folder as itself, did you get it right?

### Compile the c file
**Apply the c plugin and use the provided build task**
- Run `cat build/tmp/compileMainExecutableMainC/output.txt`
- Q: Did it compile successfully?

### Add task dependency
**Make the compile task dependent on the unpack task**
- Runt the command `./build/exe/main/main`
- Q: Was the output as expected?
