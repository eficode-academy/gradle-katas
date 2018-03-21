## Append build logic to the available task
Use the provided build.gradle to add the necessary functionality

### Output folder and files
- In the build task, define an output file called author.h in the folder output
    - _Hint: use the built-in outputs property to set outputs.file at configuration phase_

### Writing to file
- Now, write to the file where you define the author of the file.
    - _Hint: use the c header syntax #define AUTHOR_
    - _Hint: use the System.getProperty('user.name')_
- Run the command `gradle buildHeader`
- Q: Did you successfully create a file in the output folder?
- Run the command `cat output/author.h`
- Q: Does it read `#define AUTHOR yourName` ?

### Making sure incremental builds work
- Rerun the command `gradle buildHeader -i`
- Q: Did it say that the task was UP-TO-DATE ?
