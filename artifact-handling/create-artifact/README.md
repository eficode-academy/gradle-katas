## Append build logic to the available task
Use the provided build.gradle to add the necessary functionality

### Output folder and files
- In the build task, define an output folder called 'output' and create a file called author.h
- Q: Did you successfully create a file in the output folder?

### Writing to file
- Now, write to the file where you define the author of the file.
    - _Hint: use the System.getProperty('user.name')_
- Q: Does it read `#define AUTHOR <yourName>` ?
