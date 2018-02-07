## Resolve artifact

### Define your dependency
**In the build.gradle, define your dependency based on the last exercise**
- Q: When typing the command 'gradle dependencies', can you see your artifact referenced

### Unpack file(s) from dependency
**Create a task that unzip the dependency files into a lib folder**
- __Hint: use ZipTree__
- Q: main.c is looking for the author.h in a specific folder, did you get it right?

### Compile the c file
**Create a task that compiles the main.c**
- __Hint: use type: Exec__
- Q: Did you produce an a.out file?

### Add task dependency
**Make the compile task dependent on the unpack task**
- Q: When typing the command './a.out', was the output as expected?
